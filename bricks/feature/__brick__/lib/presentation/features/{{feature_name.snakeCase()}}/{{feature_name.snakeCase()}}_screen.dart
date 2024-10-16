{{#is_using_auto_route}}import 'package:auto_route/auto_route.dart';{{/is_using_auto_route}}
{{#is_using_cubit}}import '../{{feature_name.snakeCase()}}/cubit/{{feature_name.snakeCase()}}_cubit.dart';{{/is_using_cubit}}
{{#is_using_cubit}}import 'package:flutter_bloc/flutter_bloc.dart';{{/is_using_cubit}}
import 'package:flutter/material.dart';
import './ui/{{feature_name.snakeCase()}}_body.dart';
import '../../../injection/injector.dart';

{{#is_using_auto_route}}@RoutePage(){{/is_using_auto_route}}
class {{feature_name.pascalCase()}}Screen extends StatelessWidget {
  const {{feature_name.pascalCase()}}Screen({super.key});

  @override
  Widget build(BuildContext context){
    {{#is_using_cubit}}
    return BlocProvider<{{feature_name.pascalCase()}}Cubit>(
      create: (context) => {{#is_using_injectable}}injector()..init(),{{/is_using_injectable}}{{^is_using_injectable}}{{feature_name.pascalCase()}}()..init(),{{/is_using_injectable}}
      child:  Scaffold(
      appBar: AppBar(
        title: const Text('{{feature_name.pascalCase()}}'),
      ),
      body: const {{feature_name.pascalCase()}}Body(),
      ),
    );
    {{/is_using_cubit}}
    {{^is_using_cubit}}
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{feature_name.pascalCase()}}'),
      ),
      body: const {{feature_name.pascalCase()}}Body(),
    );
    {{/is_using_cubit}}
  }
}
