import 'package:mvpflutter/model/model.dart';
import 'package:mvpflutter/view/appview.dart';

class AppPresenter{
  set view(AppView appView){}
    void buttonClick(){}

}class BasicAppPresenter implements AppPresenter {
  Model _model;AppView _appView;
  @override
  void set view(AppView value) {
    // TODO: implement view
    _appView=value;
    this._appView.refreshData(this._model);
  
  }
  BasicAppPresenter(){
    this._model=Model();
  }

  @override
  void buttonClick() {
    // TODO: implement buttonClick
    int a=int.parse(this._model.controller1.text);
    int b=int.parse(this._model.controller2.text);
    
    this._model.result=a+b;
    print('${this._model.result}');
    this._appView.refreshData(this._model);
  }
  
}