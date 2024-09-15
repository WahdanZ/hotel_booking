import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

mixin TabObserverMixin<T extends StatefulWidget> on State<T>, AutoRouteAware {
  late AutoRouteObserver? _observer;
  late String _routeName;
  late TabsRouter _tabsRouter;

  @override
  void initState() {
    super.initState();
    _routeName = context.routeData.name;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Obtain the TabsRouter from the context
    _tabsRouter = context.tabsRouter;

    // Get the AutoRouteObserver
    _observer =
        RouterScope.of(context).firstObserverOfType<AutoRouteObserver>();

    if (_observer != null) {
      // Subscribe to the observer
      _observer?.subscribe(this, context.router.currentChild!);
    }

    // Add listener to TabsRouter
    _tabsRouter.addListener(_onTabChanged);
  }

  // Handler for tab changes
  void _onTabChanged() {
    if (_routeName == _tabsRouter.current.name) {
      // The current tab is active
      onTabActive();
    } else {
      // The current tab is not active
      onTabInactive();
    }
  }

  void onTabActive() {
    debugPrint('Tab $_routeName is active');
  }

  void onTabInactive() {
    debugPrint('Tab $_routeName is inactive');
  }

  @override
  void dispose() {
    // Unsubscribe from the observer and remove listener
    _observer?.unsubscribe(this);
    _tabsRouter.removeListener(_onTabChanged);
    super.dispose();
  }
}
