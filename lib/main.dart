import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/screens/home_screen.dart';

void main() {
  runApp(const App());
}

// statelesswidget - 상태를 가지지 않는 위젯 클래스(flutter 기본 widget)
// -> 내부 모든 UI 위젯들은 상태를 가질 수 없어 변화를 인지하지 못함
// 변화가 필요없는 화면을 구성할 때 사용하는 위젯 클래스이며, 그렇기 때문에 build 메서드는 한 번만 호출된다.

// statefullwidget - 한번 생성한 화면의 구성이 어떠한 이유로 인해 변경될 수 있는 경우에 사용하는 위젯 클래스다.
// setstate 메서드를 이용해 상태 변경
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
