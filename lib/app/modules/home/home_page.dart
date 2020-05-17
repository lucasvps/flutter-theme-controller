import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:themes/app/app_controller.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Theme Changer'),
          actions: <Widget>[
            Center(
                child: Text(Modular.get<AppController>().darkStatus
                    ? 'Change to Light Theme'
                    : 'Change to Dark Theme')),
            Switch(
                value: Modular.get<AppController>().darkStatus,
                onChanged: (_) {
                  Modular.get<AppController>().changeDarkStatus();
                }),
            Icon(Icons.star_border),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(
                            trailing: RaisedButton(onPressed: (){}, child: Text('Button'),),
                            leading: Icon(
                              Icons.assignment_ind,
                              color: Theme.of(context).primaryColorDark,
                            ),
                            title: Text('Title Item'),
                            subtitle: Text('Subtitle Item'),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
