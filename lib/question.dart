class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //adding questions
  list.add(Question("C++ uses which approach?", [
    Answer("Right-Reft", false),
    Answer("Bottom-Up", true),
    Answer("Top-Down", false),
    Answer("Left-Right", false),
  ]));
  list.add(
      Question("Identify the correct syntax for declaring arrays in C++?", [
    Answer("array arr[10]", false),
    Answer("array{10}", false),
    Answer("int arr[10]", true),
    Answer("int arr", false),
  ]));
  list.add(Question("Which of the following is addres of operator", [
    Answer("*", false),
    Answer("[]", false),
    Answer("&", true),
    Answer("&&", false),
  ]));
  list.add(Question("Identify the scope resolution operator", [
    Answer(":", false),
    Answer("?", false),
    Answer("::", true),
    Answer("None", false),
  ]));
  list.add(Question("hich of the following loops is best when we know the", [
    Answer("While loop", false),
    Answer("Do while", false),
    Answer("For loop", true),
    Answer("All of above", false),
  ]));
  return list;
}
