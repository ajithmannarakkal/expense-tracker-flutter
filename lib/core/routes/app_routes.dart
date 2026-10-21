import 'package:go_router/go_router.dart';

import '../../features/transactions/presentation/pages/add_transactions_screen.dart';
import 'app_router.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: AppRouter.addTransaction,
    routes: [
      GoRoute(
        path: AppRouter.addTransaction,
        builder: (context, state) => AddTransactionsScreen(),
      ),
    ],
  );
}
