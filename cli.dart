/*
Versao: 0.0.1

Codigo:
<<<<<<< HEAD

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.1';
=======

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.10';
>>>>>>> 4cf6b7310a95800e054720182d48d939e1c2fbad

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

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
<<<<<<< HEAD
Voce deve ver: Dartpedia CLI version 0.0.2
=======
Voce deve ver: Dartpedia CLI version 0.0.10
>>>>>>> 4cf6b7310a95800e054720182d48d939e1c2fbad

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework
<<<<<<< HEAD
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
-------------------------------------------------------------------------------

Versao 0.0.3

Codigo:
 

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.3';

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

   Future<String> getWikipediaArticle(String articleTitle) async {
   return '';
   final url = Uri.https(
    'en.wikipedia.org', // Wikipedia API domain
    '/api/rest_v1/page/summary/$articleTitle', // API path for article summary
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

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.3

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework
-------------------------------------------------------------------------------

Versao 0.0.4

Codigo:

 

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.4';

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

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
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
Voce deve ver: Dartpedia CLI version 0.0.4

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.5

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http; // Add this line
const version = '0.0.5';

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

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url); // Make the HTTP request

  if (response.statusCode == 200) {
    return response.body; // Return the response body if successful
  }

  // Return an error message if the request failed
  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

// ... (your existing main function)

void searchWikipedia(List<String>? arguments) async { // Added 'async'
  final String? articleTitle;

  // If the user didn't pass in arguments, request an article title.
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    articleTitle = stdin.readLineSync(); // Await input from the user
    // You'll add error handling for null input here in a moment
  } else {
    // Otherwise, join the arguments into the CLI into a single string
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');
  print('Here ya go!');
  print('(Pretend this is an article about "$articleTitle")');
}

// ... (your existing printUsage() function)

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.5

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.6

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.6';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
}

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;

  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync(); // Read input
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return; // Exit the function if no valid input
    }
    articleTitle = inputFromStdin;
  } else {
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
Voce deve ver: Dartpedia CLI version 0.0.6

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.7

 Codigo:

import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.7';

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'search') {
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs);
  } else {
    printUsage();
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
} 

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}

Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.7

Comando: dart bin/cli.dart search Dart Programming
Voce deve ver: Looking up articles about "Dart Programming". Please wait.
Here ya go!
(Pretend this is an article about "Dart Programming")

Comando: dart bin/cli.dart search
Voce deve ver: Please provide an article title.
Flutter Framework

-------------------------------------------------------------------------------

Versao: 0.0.8

 Codigo:


import 'dart:io';
import 'package:http/http.dart' as http;
const version = '0.0.17';

// ... (existing const version declaration and printUsage function)

void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help') {
    printUsage();
  } else if (arguments.first == 'version') {
    print('Dartpedia CLI version $version');
  } else if (arguments.first == 'wikipedia') { // Changed to 'wikipedia'
    // Pass all arguments *after* 'wikipedia' to searchWikipedia
    final inputArgs = arguments.length > 1 ? arguments.sublist(1) : null;
    searchWikipedia(inputArgs); // Call searchWikipedia (no 'await' needed here for main)
  } else {
    printUsage(); // Catch all for any unrecognized command.
  }
} 

void printUsage() {
  print("The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}

   Future<String> getWikipediaArticle(String articleTitle) async {
   final url = Uri.https(
    'en.wikipedia.org', 
    '/api/rest_v1/page/summary/$articleTitle',
  );
   final response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  }

  return 'Error: Failed to fetch article "$articleTitle". Status code: ${response.statusCode}';
} 

// ... (beginning of searchWikipedia function, after determining articleTitle)

void searchWikipedia(List<String>? arguments) async {
  final String articleTitle;
  if (arguments == null || arguments.isEmpty) {
    print('Please provide an article title.');
    final inputFromStdin = stdin.readLineSync();
    if (inputFromStdin == null || inputFromStdin.isEmpty) {
      print('No article title provided. Exiting.');
      return;
    }
    articleTitle = inputFromStdin;
  } else {
    articleTitle = arguments.join(' ');
  }

  print('Looking up articles about "$articleTitle". Please wait.');

  // Call the API and await the result
  var articleContent = await getWikipediaArticle(articleTitle);
  print(articleContent); // Print the full article response (raw JSON for now)
}


Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.17

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"
Voce deve ver: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}


-------------------------------------------------------------------------------

versao 0.0.9

  Codigo: 
*/

import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:command_runner/command_runner.dart';

void main(List<String> arguments) async {
  var runner = CommandRunner();
  await runner.run(arguments);
}

/*
Saida padrao ao executar o codigo:

Comando: dart bin/cli.dart
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart help
Voce deve ver: The following commands are valid: 'help', 'version', 'search <ARTICLE-TITLE>'

Comando: dart bin/cli.dart version
Voce deve ver: Dartpedia CLI version 0.0.17

Comando: dart run bin/cli.dart wikipedia "Dart_(programming_language)"
Voce deve ver: Looking up articles about "Dart_(programming_language)". Please wait.
{
  "type": "standard",
  "title": "Dart (programming language)",
  "displaytitle": "<span class=\"mw-page-title-main\">Dart (programming language)</span>",
  "namespace": {
      "id": 0,
      "text": ""
    }

  // ... (rest of the JSON output will be present but truncated here)

}


Comando: dart bin/cli.dart wikipedia
Flutter_(software)
Voce deve ver: Please provide an article title.
Flutter_(software)
Looking up articles about "Flutter_(software)". Please wait.
{
  "type": "standard",
  "title": "Flutter (software)",
  "displaytitle": "<span class=\"mw-page-title-main\">Flutter (software)</span>",
  "namespace": {
      "id": 0,
      "text": ""
  }

// ... (rest of the JSON output will be present but truncated here)

}
*/


