import 'package:flutter/material.dart';
import 'list_projects.dart';
import 'HomeWindow.dart';
import 'appBar.dart';
import 'package:go_router/go_router.dart';

class wrapper extends StatefulWidget
{
  final StatefulNavigationShell navigationShell;
  wrapper(this.navigationShell);

  @override
  State<wrapper> createState() => _wrapperState();
}

class _wrapperState extends State<wrapper> {
  var current_index = 1;
  Widget build(BuildContext build)
  {
    return Scaffold
      (
        body: widget.navigationShell,
        bottomNavigationBar: BottomNavigationBar
          (
            type: BottomNavigationBarType.fixed,
            currentIndex: current_index,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                label: 'Lista proiectelor',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'acasa',
              ),
              BottomNavigationBarItem
                (
                  icon: Icon(Icons.add_alert_sharp),
                  label: 'Notificari',
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Setari',
              ),
            ],
            onTap: (index)
            {
              current_index = index;
              setState(() {
                  widget.navigationShell.goBranch(current_index);
              });
            }
        )
    );
  }
}

class app_Navigatr
{
  static String initial = "/home";
  static final _rootNavigatorKey       = GlobalKey<NavigatorState>();
  static final _NavigatorAcasa         = GlobalKey<NavigatorState>();
  static final _NavigatorListaProiecte = GlobalKey<NavigatorState>();
  static final _NavigatorSetari        = GlobalKey<NavigatorState>();
  static final _NavigatorNotififcari   = GlobalKey<NavigatorState>();
  static final GoRouter router = GoRouter
    (
      initialLocation:     initial,
      navigatorKey:        _rootNavigatorKey,
      debugLogDiagnostics: true,
      routes:
      [
        StatefulShellRoute.indexedStack
          (
            builder: (context,state,NavigationShell)
            {
              return wrapper(NavigationShell);
            },
            branches: <StatefulShellBranch>
            [
              StatefulShellBranch
                (
                navigatorKey: _NavigatorListaProiecte,
                routes: <RouteBase>
                [
                  GoRoute
                    (
                      path: "/Proiecte",
                      name: "Proiecte",
                      builder: (context,state)
                      {
                        return ListaProiecte();
                      },
                  ),
                ],
              ),
                StatefulShellBranch
                  (
                  navigatorKey: _NavigatorAcasa,
                  routes: <RouteBase>
                  [
                    GoRoute
                      (
                        path: "/Home",
                        name: "Home",
                        builder: (context,state)
                        {
                          return HomeWindow();
                        }
                      ),
                  ],
                  ),
              StatefulShellBranch
                (
                navigatorKey: _NavigatorNotififcari,
                routes: <RouteBase>
                [
                  GoRoute
                    (
                      path: "/Notificari",
                      name: "Notificari",
                      builder: (context,state)
                      {
                        return Text("Notificari");
                      }
                  ),
                ],
              ),
                StatefulShellBranch
                  (
                    navigatorKey: _NavigatorSetari,
                    routes: <RouteBase>
                    [
                      GoRoute
                        (
                          path: "/Setting",
                          name: "Setting",
                          builder: (context,state)
                          {
                            return Text("Setari");
                          }
                        ),
                    ],
                  ),
            ],
          ),
      ],
    );
}