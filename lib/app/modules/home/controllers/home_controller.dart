import 'package:flutter_expansion_list_getx/app/data/Empolee.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  late List<Employee> employee;
 
  @override
  void onInit() {
    super.onInit();
    employee = generateItems(20);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

 List<Employee> generateItems(int numberofItems){
   return List.generate(numberofItems, (int index) {
     return Employee(
       header: 'Employee - $index',
       body: 'Emloyee - $index Details',
       isExpanded: false.obs);
   });
   
 }
}
