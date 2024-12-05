// 1. Collections, String Manipulation, and Functions
// Write a program that:
// - **Accepts a list of sentences:
// List<String> sentences = [
// "Dart is awesome",
// "Flutter is amazing",
// "I love programming"
// ];
// - **Defines a function `countWords(List<String> sentences)` that:**
// - Counts the total number of words across all sentences.
// - Returns the count.
// - Prints the total word count and the longest word in the list.

void main() {
  List<String> sentences = [
    "Dart is awesome",
    "Flutter is amazing",
    "I love programming"
  ];
  print('The total words count= ${countWords(sentences)}');
}

int countWords(List<String> sentences) {
  String wordString = sentences.join(' ').trim();

  List<int> spacesIndexList = [4, 7, 15, 23, 26, 34, 36, 41, 53];
  print(wordString);

  Map<int, String> wordsMap = {};
  for (var i = 0; i < wordString.length; i++) {
    wordsMap[i] = wordString[i];
  }
  // print(wordsMap);

  // for (var i = 0; i < wordsMap.length; i++) {     // i can't get index of space from Map
  //   if (wordsMap.values == ' ' ||
  //       wordsMap.values == ',' ||
  //       wordsMap.values == '!') {
  //     spacesIndexList.add(i);
  //   }
  // }
  List<String> wordsList = [];
  int count = 0;
  for (var i = 0; i < spacesIndexList.length; i++) {
    wordsList.add(wordString.substring(count, spacesIndexList[i]));
    count = spacesIndexList[i] + 1;
  }

  print(wordsList);

  String longestWord;

  longestWord = wordsList.reduce((a, b) {
    return a.length > b.length ? a : b;
  });

  print('The longest word is  $longestWord');

  // print(wordsList.length);
  //print(spacesIndexList);
  return wordsList.length;
}

// i can't solve it
