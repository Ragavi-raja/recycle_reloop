import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => SplashScreenWidget(),
        ),
        FFRoute(
          name: SplashScreenWidget.routeName,
          path: SplashScreenWidget.routePath,
          builder: (context, params) => SplashScreenWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: CertificatepageWidget.routeName,
          path: CertificatepageWidget.routePath,
          builder: (context, params) => CertificatepageWidget(),
        ),
        FFRoute(
          name: Selscrapimage1Widget.routeName,
          path: Selscrapimage1Widget.routePath,
          builder: (context, params) => Selscrapimage1Widget(
            pageName: params.getParam(
              'pageName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Into1Widget.routeName,
          path: Into1Widget.routePath,
          builder: (context, params) => Into1Widget(),
        ),
        FFRoute(
          name: Into1CopyWidget.routeName,
          path: Into1CopyWidget.routePath,
          builder: (context, params) => Into1CopyWidget(),
        ),
        FFRoute(
          name: Into1CopyCopyWidget.routeName,
          path: Into1CopyCopyWidget.routePath,
          builder: (context, params) => Into1CopyCopyWidget(),
        ),
        FFRoute(
          name: SignupscreenWidget.routeName,
          path: SignupscreenWidget.routePath,
          builder: (context, params) => SignupscreenWidget(),
        ),
        FFRoute(
          name: OTPScreenWidget.routeName,
          path: OTPScreenWidget.routePath,
          builder: (context, params) => OTPScreenWidget(),
        ),
        FFRoute(
          name: HomePageWidget.routeName,
          path: HomePageWidget.routePath,
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: NewlocationWidget.routeName,
          path: NewlocationWidget.routePath,
          builder: (context, params) => NewlocationWidget(),
        ),
        FFRoute(
          name: ScrapsuccessWidget.routeName,
          path: ScrapsuccessWidget.routePath,
          builder: (context, params) => ScrapsuccessWidget(),
        ),
        FFRoute(
          name: ProfilepageParentWidget.routeName,
          path: ProfilepageParentWidget.routePath,
          builder: (context, params) => ProfilepageParentWidget(),
        ),
        FFRoute(
          name: ProfileBonusWidget.routeName,
          path: ProfileBonusWidget.routePath,
          builder: (context, params) => ProfileBonusWidget(),
        ),
        FFRoute(
          name: ProfileUpdateWidget.routeName,
          path: ProfileUpdateWidget.routePath,
          builder: (context, params) => ProfileUpdateWidget(),
        ),
        FFRoute(
          name: SellscrapWidget.routeName,
          path: SellscrapWidget.routePath,
          builder: (context, params) => SellscrapWidget(
            pageName: params.getParam(
              'pageName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ProfilemobWidget.routeName,
          path: ProfilemobWidget.routePath,
          builder: (context, params) => ProfilemobWidget(),
        ),
        FFRoute(
          name: ProfilemobotpWidget.routeName,
          path: ProfilemobotpWidget.routePath,
          builder: (context, params) => ProfilemobotpWidget(),
        ),
        FFRoute(
          name: PaymentprofWidget.routeName,
          path: PaymentprofWidget.routePath,
          builder: (context, params) => PaymentprofWidget(),
        ),
        FFRoute(
          name: ProfaddreWidget.routeName,
          path: ProfaddreWidget.routePath,
          builder: (context, params) => ProfaddreWidget(),
        ),
        FFRoute(
          name: CouponpageWidget.routeName,
          path: CouponpageWidget.routePath,
          builder: (context, params) => CouponpageWidget(),
        ),
        FFRoute(
          name: ComunityscreenWidget.routeName,
          path: ComunityscreenWidget.routePath,
          builder: (context, params) => ComunityscreenWidget(),
        ),
        FFRoute(
          name: Communitytab2Widget.routeName,
          path: Communitytab2Widget.routePath,
          builder: (context, params) => Communitytab2Widget(),
        ),
        FFRoute(
          name: CreatepostWidget.routeName,
          path: CreatepostWidget.routePath,
          builder: (context, params) => CreatepostWidget(),
        ),
        FFRoute(
          name: JoincommunityWidget.routeName,
          path: JoincommunityWidget.routePath,
          builder: (context, params) => JoincommunityWidget(),
        ),
        FFRoute(
          name: SucceesspageWidget.routeName,
          path: SucceesspageWidget.routePath,
          builder: (context, params) => SucceesspageWidget(),
        ),
        FFRoute(
          name: Selscrapimage1CopyWidget.routeName,
          path: Selscrapimage1CopyWidget.routePath,
          builder: (context, params) => Selscrapimage1CopyWidget(
            pageName: params.getParam(
              'pageName',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: Sellscrap2Widget.routeName,
          path: Sellscrap2Widget.routePath,
          builder: (context, params) => Sellscrap2Widget(),
        ),
        FFRoute(
          name: HistoryWidget.routeName,
          path: HistoryWidget.routePath,
          builder: (context, params) => HistoryWidget(),
        ),
        FFRoute(
          name: ListhistoryWidget.routeName,
          path: ListhistoryWidget.routePath,
          builder: (context, params) => ListhistoryWidget(),
        ),
        FFRoute(
          name: CollectionpageWidget.routeName,
          path: CollectionpageWidget.routePath,
          builder: (context, params) => CollectionpageWidget(),
        ),
        FFRoute(
          name: QuoteWidget.routeName,
          path: QuoteWidget.routePath,
          builder: (context, params) => QuoteWidget(),
        ),
        FFRoute(
          name: ContributetoWidget.routeName,
          path: ContributetoWidget.routePath,
          builder: (context, params) => ContributetoWidget(),
        ),
        FFRoute(
          name: CorporateWidget.routeName,
          path: CorporateWidget.routePath,
          builder: (context, params) => CorporateWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
