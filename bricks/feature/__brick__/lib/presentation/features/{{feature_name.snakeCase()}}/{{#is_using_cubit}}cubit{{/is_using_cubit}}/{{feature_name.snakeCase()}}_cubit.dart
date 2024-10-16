import 'package:flutter_bloc/flutter_bloc.dart';
import './{{feature_name.snakeCase()}}_state.dart';
{{#is_using_injectable}}import 'package:injectable/injectable.dart';{{/is_using_injectable}}


{{#is_using_injectable}}@injectable{{/is_using_injectable}}
final class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit() : super({{feature_name.pascalCase()}}State.initial());

  Future<void> init() async {
    // Initiate your Cubit with your own logic.
    // Change status as required, example:
    // emit(state.copyWith(initializationStatus: BaseStatus.initial()));
  }
}
