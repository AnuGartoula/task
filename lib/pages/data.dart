// class Globaldata {
//   final List<List<dynamic>> data = [
//     ["Schedule Meetings", false],
//     [
//       "Make Tutorials",
//       true,
//     ],
//     ["Dinner with John", false],
//     ["CS 101 lecture", false],
//     ["Meetings with Executives", true]
//   ];
// }
class Todo {
  String title;
  bool complete;

  Todo({
    required this.title,
    this.complete = false,
  });
  Todo.fromMap(Map map)
      : title = map['title'],
        complete = map['complete'];
  Map tomap() {
    return {'title': title, 'complete ': complete};
  }
}
