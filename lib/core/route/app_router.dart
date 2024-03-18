import 'package:go_router/go_router.dart';

import 'package:blog_app/core/common/pages/root_page.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/auth/presentation/pages/signup_page.dart';
import 'package:blog_app/features/auth/presentation/pages/home_page.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:blog_app/features/blog/presentation/pages/blog_page.dart';
import 'package:blog_app/features/blog/presentation/pages/add_new_blog_page.dart';
import 'package:blog_app/features/blog/presentation/pages/blog_viewer_page.dart';


class AppRoutes {
  static const String root = "/";
  static const String login = "/log_in";
  static const String signup = "/sign_up";
  static const String home = "/home";
  static const String blogs = "/blogs";
  static const String blogAddNew = "/blog_add_new";
  static const String blogViewer = "/blog_viewer";
}

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.root,
        builder: (context, state) => const RootPage(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoutes.signup,
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: AppRoutes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutes.blogs,
        builder: (context, state) => const BlogPage(),
      ),
      GoRoute(
        path: AppRoutes.blogAddNew,
        builder: (context, state) => const AddNewBlogPage(),
      ),
      GoRoute(
        path: AppRoutes.blogViewer,
        builder: (context, state) {
          Blog blog = state.extra as Blog; // 👈 casting is important
          return BlogViewerPage(blog: blog);
        },
      ),
    ],
  );
}
