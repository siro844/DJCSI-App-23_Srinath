
class ToDo{

  String? text;
  bool isDone;
  bool delete=false;
ToDo({

  required this.text,
  this.isDone=false,


});
static List<ToDo> todolist(){
  return[
      ToDo( text:'Daily UI Challenge',isDone: true),
      ToDo( text:'User Flow',isDone: true),
      ToDo( text:'Design System'),
      ToDo( text:'Daily UX Design'),
  ];
}
}