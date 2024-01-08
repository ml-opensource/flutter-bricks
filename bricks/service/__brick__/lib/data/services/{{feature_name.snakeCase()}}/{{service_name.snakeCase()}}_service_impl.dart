{{# is_using_injectable }}import 'package:injectable/injectable.dart';{{/ is_using_injectable}}
import '../../../domain/services/{{feature_name.snakeCase()}}/{{service_name.snakeCase()}}_service.dart';


{{# is_using_injectable }}@Injectable(as: {{service_name.pascalCase()}}Service){{/ is_using_injectable}}
class {{service_name.pascalCase()}}ServiceImpl extends {{service_name.pascalCase()}}Service {
  // TODO: Change method name according to the abstract class
  @override
  void doSomething() {
    // Your implementation here
  }

   // TODO: Change method name according to the abstract class
  @override
  void doAnotherThing() {
    // Your implementation here
  }
}
