import 'dart:io';

class Crud {
  List<Map<String, dynamic>> list = [];

  void add({required name, required sem, required rno}) {
    Map<String, dynamic> map = {};
    map['name'] = name;
    map['sem'] = sem;
    map['rno'] = rno;
    list.add(map);
  }

  void read() {
    for (var i in list) {
      print('${i['name']} : ${i['sem']} : ${i['rno']}');
    }
  }

  void delete({required id}) {
    list.removeAt(id);
  }

  void update(
      {required String name, required String sem, required int rno, required id}) {
    Map<String, dynamic> map = {};
    map['name'] = name;
    map['sem'] = sem;
    map['rno'] = rno;
    list[id] = map;
  }
}

void main() {
  Crud c = Crud();

  while (true) {
    stdout.write(
        "1. Insert || 2. Read || 3. Update || 4.Delete || 5.Search || 6.Exit");
    stdout.write("Enter ")
    int op = int.parse(stdin.readLineSync()!);

    switch (op) {
      case 1:
        stdout.write("Enter name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter sem: ");
        String sem = stdin.readLineSync()!;
        stdout.write("Enter rollno: ");
        String rno = stdin.readLineSync()!;
        c.add(name: name, sem: sem, rno: rno);
        break;

      case 2:
        c.read();
        break;

      case 3:
        stdout.write("Enter name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter sem: ");
        String sem = stdin.readLineSync()!;
        stdout.write("Enter rollno: ");
        int rno = int.parse(stdin.readLineSync()!);
        stdout.write("Enter id: ");
        int id = int.parse(stdin.readLineSync()!);
        c.update(name: name, sem: sem, rno: rno, id: id);
        break;

      case 4:
        stdout.write("Enter id to delete: ");
        int id = int.parse(stdin.readLineSync()!);
        c.delete(id: id);
        break;

      case 5:


      case 6:
        exit(0);
    }
  }
}