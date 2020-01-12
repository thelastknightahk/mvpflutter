import 'package:flutter/material.dart';
import 'package:mvpflutter/model/model.dart';
import 'package:mvpflutter/presenter/presenter.dart';
import 'package:mvpflutter/view/appview.dart';

class HomePage extends StatefulWidget {
  final AppPresenter appPresenter;

  @override
  HomePage(this.appPresenter,{Key key}):super(key:key);
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements AppView{
  Model _model;
  
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter"),),
      body: Column(
        children: <Widget>[
          Container(
            child: TextField(
              controller: _model.controller1,
              decoration: InputDecoration(
                labelText: 'Enter first number',
                hintText: 'number'
              ),
            ),
          ),
          Container(
            child: TextField(
              controller: _model.controller2,
              decoration: InputDecoration(
                labelText: 'Enter Second number',
                hintText: 'number'
              ),
            ),
          ),
          Container(
            child: RaisedButton(
              onPressed: (){this.widget.appPresenter.buttonClick();
              print('click');
              
              },
              child: Icon(Icons.add),
            ),
          ),
          Container(
            child: Text('${_model.result}'),
          )
        ],
      ),
    );
  }

  @override
  void refreshData(Model model) {
     setState(() {
       this._model=model;
     });
    
  }
  @override
  void initState() { 
    super.initState();
    this.widget.appPresenter.view=this;
  }
}