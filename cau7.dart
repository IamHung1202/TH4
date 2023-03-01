import 'dart:io';

void main(){
Map<String, String> ID = {
  'Hung': '1234567890',
  'Thien': '567890234',
  'Thanh': '0987654321'
  
};
 var length4=ID.keys.where((key)=> key.length==4);
  print('keys that have length 4 : $length4');
  
}