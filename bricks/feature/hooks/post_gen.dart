import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  // Change to the directory where your project exists
  final workingDir = Directory.current.path;

  // Run build_runner command
  final result = await Process.run(
    'flutter',
    ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
    workingDirectory: workingDir,
  );

  // Check if the command was successful
  if (result.exitCode != 0) {
    context.logger.info('Error running build_runner:');
    context.logger.info(result.stderr);
  } else {
    context.logger.info('build_runner completed successfully.');
  }
}
