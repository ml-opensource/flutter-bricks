import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}Body extends StatelessWidget {
  const {{feature_name.pascalCase()}}Body({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Text("Find me on {{feature_name.pascalCase()}}Body"),
    );
  }
}
