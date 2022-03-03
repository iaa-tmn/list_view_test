List<User> generateUserList(){
  List<User> users=[];
  for (int i=0; i<10; i++) {
    users.add(User("Вася Пупкин $i", "123123$i"));
  }
  return users;
}


class User {
  String Name="";
  String Phone="";

  User(String sName,String sPhone) {
    Name=sName;
    Phone=sPhone;
  }
}