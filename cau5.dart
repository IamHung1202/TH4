void main() {
  List<String> Name = [
    "Nguyen Viet Hung",
    "Pham Van Thien",
    "Pham Van Hung",
    "Bui Trung Kien",
    "Bui Xuan Huan",
    "Tu Ma Y",
    "Gia Cat Luong"
  ];

  List<String> startWithS =
      Name.where((element) => element.startsWith("N")).toList();

  print(startWithS);
}