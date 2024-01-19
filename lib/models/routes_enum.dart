enum AppRoute {
  homePage,
  providerPage,
  statefulPage,
  pageNotFound;

  String get path {
    switch (this) {
      case AppRoute.homePage:
        return '/';
      case AppRoute.providerPage:
        return '/provider';
      case AppRoute.statefulPage:
        return '/stateful';
      case AppRoute.pageNotFound:
        return "/notFoundPage";
      default:
        return '/notFoundPage';
      // other cases
    }
  }
}
