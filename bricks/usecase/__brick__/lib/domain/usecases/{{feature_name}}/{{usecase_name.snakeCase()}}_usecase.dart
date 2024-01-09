{{# is_using_injectable }}import 'package:injectable/injectable.dart';{{/ is_using_injectable}}

{{# is_using_injectable }}@injectable{{/ is_using_injectable}}
final class {{usecase_name.pascalCase()}}UseCase {
{{#services.0}}
{{usecase_name.pascalCase()}}UseCase({
{{#services}}   required this.{{..camelCase()}},
{{/services}}
});

{{#services}}  final {{..pascalCase()}} {{..camelCase()}};
{{/services}}{{/services.0}}
  Future<void> call() async {
    // Implement your usecase
    return Future.delayed(const Duration(seconds: 2));
  }
}
