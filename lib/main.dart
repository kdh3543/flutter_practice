import 'package:flutter/material.dart';

class Player {
  String? name;
  Player();
}

void main() {
  runApp(App());
}

// statelesswidget - 상태를 가지지 않는 위젯 클래스(flutter 기본 widget)
// -> 내부 모든 UI 위젯들은 상태를 가질 수 없어 변화를 인지하지 못함
// 변화가 필요없는 화면을 구성할 때 사용하는 위젯 클래스이며, 그렇기 때문에 build 메서드는 한 번만 호출된다.

// statefullwidget - 한번 생성한 화면의 구성이 어떠한 이유로 인해 변경될 수 있는 경우에 사용하는 위젯 클래스다.
// setstate 메서드를 이용해 상태 변경
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp() ==> google
    // CupertinoApp() ==> ios
    // scaffold -> 화면에 맞춰서 중앙정렬 및 css 적용
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFF181818),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )),
    ));
  }
}
