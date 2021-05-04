import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectindex = 0;
  List<Widget> _options = <Widget>[
    Text(
      'TAB : 0',
      style: TextStyle(fontSize: 20.0),
    ),
    Text(
      'TAB : 1',
      style: TextStyle(fontSize: 20.0),
    ),
    Text(
      'TAB : 2',
      style: TextStyle(fontSize: 20.0),
    ),
    Text(
      'TAB : 3',
      style: TextStyle(fontSize: 20.0),
    ),
  ];

  void _changeindex(int index) {
    setState(() {
      _selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom App Bar with FAB'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _options[_selectindex],
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.menu,
                    ),
                    label: 'This',
                    backgroundColor: Colors.red,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.add,
                    ),
                    label: 'is',
                    backgroundColor: Colors.green,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                    ),
                    label: 'Bottom',
                    backgroundColor: Colors.greenAccent,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.school,
                    ),
                    label: 'Bar',
                    backgroundColor: Colors.grey,
                  ),
                ],
                currentIndex: _selectindex,
                selectedItemColor: Colors.amber,
                onTap: _changeindex,
              ),
            ),
          ],
        ),
        color: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }
}
