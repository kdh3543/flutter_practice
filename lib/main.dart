import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Player {
  String? name;
  Player();
}

void main() {
  runApp(const App());
}

// statelesswidget - 상태를 가지지 않는 위젯 클래스(flutter 기본 widget)
// -> 내부 모든 UI 위젯들은 상태를 가질 수 없어 변화를 인지하지 못함
// 변화가 필요없는 화면을 구성할 때 사용하는 위젯 클래스이며, 그렇기 때문에 build 메서드는 한 번만 호출된다.

// statefullwidget - 한번 생성한 화면의 구성이 어떠한 이유로 인해 변경될 수 있는 경우에 사용하는 위젯 클래스다.
// setstate 메서드를 이용해 상태 변경
class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<int> numbers = [];
  bool show = true;

  void toggleTitle() {
    setState(() {
      show = !show;
    });
  }

  void onClicked() {
    setState(() {
      // counter = 0;
      numbers.add(numbers.length);
    });
  }

  @override
  // buildcontext --> 위젯 트리에서 위젯의 위치를 제공하고 상위 요소 데이터에 접근가능
  Widget build(BuildContext context) {
    // MaterialApp() ==> google
    // CupertinoApp() ==> ios
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
      home: Scaffold(
        backgroundColor: const Color(0xFFF4EDDB),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              show ? const MyLargeTitle() : const Text('not show title'),
              IconButton(
                onPressed: toggleTitle,
                icon: const Icon(Icons.remove_red_eye),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyLargeTitle extends StatefulWidget {
  const MyLargeTitle({
    super.key,
  });

  @override
  State<MyLargeTitle> createState() => _MyLargeTitleState();
}

class _MyLargeTitleState extends State<MyLargeTitle> {
  int count = 0;

  // widget life cycle;
  // 위젯이 생성될 때 호출되는 메서드
  @override
  void initState() {
    super.initState();
    print('hello');
  }

  // 위젯이 스크린에서 제거될 때 호출되는 메서드
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('good bye');
  }

  @override
  Widget build(BuildContext context) {
    print('widget');
    return Text(
      'My Large Title',
      style: TextStyle(
          fontSize: 30, color: Theme.of(context).textTheme.titleLarge?.color),
    );
  }
}
