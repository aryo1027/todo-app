class ToDo {
  String id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    this.todoText,
    this.isDone = false,
  });

  factory ToDo.fromJson(Map<String, dynamic> json) {
    return ToDo(
      id: json['id'],
      todoText: json['todoText'],
      isDone: json['isDone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoText': todoText,
      'isDone': isDone,
    };
  }

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '01',
        todoText: 'Membuang Sampah',
        isDone: true,
      ),
      ToDo(
        id: '02',
        todoText: 'Membuat Makalah',
        isDone: false,
      ),
    ];
  }
}
