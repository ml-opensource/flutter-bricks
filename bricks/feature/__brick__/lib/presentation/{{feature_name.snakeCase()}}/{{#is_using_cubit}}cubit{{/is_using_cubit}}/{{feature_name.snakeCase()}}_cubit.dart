import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
{{#is_using_injectable}}import 'package:injectable/injectable.dart';{{/is_using_injectable}}

part '{{feature_name.snakeCase()}}_cubit.freezed.dart';
part '{{feature_name.snakeCase()}}_state.dart';

{{#is_using_injectable}}@injectable{{/is_using_injectable}}
class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit() : super({{feature_name.pascalCase()}}State.initial());

  Future<void> init() async {
    // Initiate your Cubit with your own logic.
    // Change status as required, example:
    // emit(state.copyWith(initializationStatus: BaseStatus.initial()));
  }
}
