import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'error/error_response.dart';

@lazySingleton
class ApiRepository {
  Future<Either<ErrorResponse, T>> callApi<T>(
      Future<Response<dynamic>> Function(dynamic payload) apiCall,
      dynamic requestData,
      T Function(dynamic json) fromJson, {
        bool isFormData = false,
      }) async {
    try {
      final response = await apiCall(requestData);
      final data = response.data;

      return Right(fromJson(data));
    } on DioException catch (e) {
      final responseData = e.response?.data;
      final description = responseData is Map
          ? responseData['message']?.toString() ??
          responseData['description']?.toString() ??
          e.message ??
          'Request failed'
          : e.message ?? 'Request failed';

      return Left(
        ErrorResponse(
          statusCode: (e.response?.statusCode ?? 500).toString(),
          remarks: 'API Error',
          description: description,
        ),
      );
    } catch (e) {
      return Left(
        ErrorResponse(
          statusCode: '500',
          remarks: 'Client Error',
          description: e.toString(),
        ),
      );
    }
  }
}