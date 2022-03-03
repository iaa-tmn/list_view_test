import 'package:flutter/material.dart';
import 'package:list_view_test/user_list.dart';

void main() {

  runApp(const vList());
}
List<User> UserList = generateUserList();
class vList extends StatelessWidget {
  const vList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: listUser(),
      ),
    );
  }
}

class listUser extends StatelessWidget {
  const listUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: UserList.length,
        itemBuilder: (BuildContext context, int index){
            return myListItem(number: index);
        });
  }
}

class myListItem extends StatelessWidget {
  const myListItem({Key? key, required this.number}) : super(key: key);
  final int number;
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text("ФИО: ${UserList[number].Name} \nНомер телефона: ${UserList[number].Phone}"), onTap: (){},);
  }
}

