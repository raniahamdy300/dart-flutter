class Car {
  String _make = 'defaultmade';
  String _model = 'defaultmodel';
  int? year;

  set make(String value) {
    this._make = value;
  }

  String get getmake {
    return this._make;
  }

  set model(String value) {
    this._model = value;
  }

  String get getmodel {
    return this._model;
  }

  void displayInfo() {
    print('The car made in $getmake in $year,  Model $getmodel');
  }
}
