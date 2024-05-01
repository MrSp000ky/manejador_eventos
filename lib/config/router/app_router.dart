import 'package:go_router/go_router.dart';
import 'package:manejador_eventos/presentation/screens/screens.dart';
import 'package:manejador_eventos/presentation/screens/viewScreen/ViewPageScreen.dart';
final appRouter = GoRouter(routes:
  
  [
  GoRoute(
    path: '/',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/login-page',
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/creation-event',
    builder: (context, state) => const CreationEventPage(),
  ),GoRoute(
    path: '/view-event',
    builder: (context, state) => const ViewPageScreen(),
  ),
  GoRoute(
    path: '/menu-page',
    builder: (context, state) => const MenuPage(),
  ),
  GoRoute(
    path: '/new-user',
    builder: (context, state) => const RegistrationPage(),
  ),
]);