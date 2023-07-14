// ** FactoryMethod can be written two places
// 1 - abstract class itself
// 2 - creating a class itself

// ** In the factory constructor we cannot extend the Employee class.
//          we need to implement it.

// ** Because when we use implement it, it acts as an interface,
//         but if you use extends : it will act like a baseclass.

// ADVANTAGES
//  Dont know what objects to return
//  Localise Logic to return Object
//  Let subclasses decide Object to return
//  BroaderClass should be the data type.

enum EmployeeType { programmer, hrManager, productManager }

abstract class Employee {
  void work();
  // WAY 1 :
  factory Employee({required EmployeeType type}) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hrManager:
        return HRManager();
      case EmployeeType.productManager:
        return ProductManager();
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print('Coding an app');
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print('Recruiting people');
  }
}

class ProductManager implements Employee {
  @override
  void work() {
    print('Form the issues to programmers');
  }
}

// ** WAY 2 :
// ** we have created a static : because, now we don't have to create an instance of the class whenever we want to use it.
class FactoryMethod {
  static Employee getEmployee({required EmployeeType type}) {
    switch (type) {
      case EmployeeType.programmer:
        return Programmer();
      case EmployeeType.hrManager:
        return HRManager();
      case EmployeeType.productManager:
        return ProductManager();
    }
  }
}

void main2() {
  // Employee employee = Employee(type: EmployeeType.programmer);
  Employee employee = FactoryMethod.getEmployee(type: EmployeeType.programmer);
  employee.work();
}
