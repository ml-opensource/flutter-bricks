part of '{{feature_name.snakeCase()}}_cubit.dart';

@freezed
final class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
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
