/*
Versao: 0.0.1

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.1';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
}

void printUsage() { // Add this new function
  print(
    "The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'"
  );
}

void searchWikipedia(List<String>? arguments) { 
  final String articleTitle;
 
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
} 
/*
Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.2

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework
-------------------------------------------------------------------------------

Versao 0.0.2

Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.2';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    // Add this new block:
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

// Assinatura da função adicionada aqui
   Future<String> getWikipediaArticle(String articleTitle) async {
  return '';  
// You'll add more code here soon
}

void searchWikipedia(List<String>? arguments) {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.2

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework 
