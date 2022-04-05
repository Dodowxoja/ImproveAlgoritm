import 'package:app/bloc/validate/validate_state.dart';
import 'package:bloc/bloc.dart';

class ValidateCubit extends Cubit<ValidateState> {
  ValidateCubit() : super(ValidateInitialState());
  double width = 0.0;
  String word =
      "Assalomu alaykum. Salom Bekzod sen rostanam flutterni ustasimisan? yo hazllashdiymi?";

  animate() {
    for (int i = 0; i < 20; i += 1) {
      Future.delayed(Duration(seconds: i)).then((value) {
        width += 0.02;
        emit(ValidateChangeState());
      });
    }
  }

  check(List<String> input) {
    List<String> data = List.generate(input.length, (index) => input[index]);
    List<String> checkData = [];
    for (int i = 0; i < word.length; i++) { 
      checkData.add(word[i]);
    }
    checkLoop:
    for (int i = 0; i < data.length; i++) {
      if (data[i] == checkData[i]) {
        print("Hello");
      } else {
        print("Tugadi");
        emit(ValidateEndState());
        break checkLoop;
      }
    }
  }
}
