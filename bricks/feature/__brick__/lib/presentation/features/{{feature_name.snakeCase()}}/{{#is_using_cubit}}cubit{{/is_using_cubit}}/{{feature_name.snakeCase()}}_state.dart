import 'package:freezed_annotation/freezed_annotation.dart';
part '{{feature_name.snakeCase()}}_state.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}State._();

  const factory {{feature_name.pascalCase()}}State(
  // {
  //   @Default(BaseStatus.initial()) BaseStatus initializationStatus,
  // }
  ) = _{{feature_name.pascalCase()}}State;

  factory {{feature_name.pascalCase()}}State.initial() {
    return const {{feature_name.pascalCase()}}State();
  }
}
