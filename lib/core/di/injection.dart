import 'package:get_it/get_it.dart';

import '../../features/transactions/data/datasources/transaction_datasources.dart';
import '../../features/transactions/data/repositories/transaction_repository.dart';
import '../../features/transactions/domain/repositories/transaction_repository_impl.dart';
import '../../features/transactions/presentation/bloc/transactions_bloc.dart';
import '../network/api_repository.dart';
import '../network/dio_client.dart';

final sl = GetIt.instance;

void configureDependencies() {
  // Core
  sl.registerLazySingleton<DioClient>(() => DioClient());
  sl.registerLazySingleton<ApiRepository>(() => ApiRepository());

  // Data Sources
  sl.registerLazySingleton<TransactionRemoteDataSource>(
    () => TransactionRemoteDataSource(sl<ApiRepository>(), sl<DioClient>()),
  );

  // Repositories
  sl.registerLazySingleton<TransactionRepository>(
    () => TransactionRepositoryImpl(sl<TransactionRemoteDataSource>()),
  );

  // Blocs
  sl.registerFactory<TransactionBloc>(
    () => TransactionBloc(sl<TransactionRepository>()),
  );
}
