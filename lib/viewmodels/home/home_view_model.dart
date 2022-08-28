import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel
{
   int counter=0;
initialise()
{
  
}

addValue()
{
  counter++;
  notifyListeners();
}

}