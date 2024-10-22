// Factory Method is to define an interface for creating an object, but we let subclasses decide which class to instantiate. Factory method lets a class defer instantiation to subclasses.
abstract class Employee {
  void work();

  factory Employee(String type) {
    switch (type) {
      case 'programmer':
        return Programmer();
      case 'hrManager':
        return HRManager();
      case 'boss':
        return Boss();
      default:
        return Programmer();
    }
  }
}

class Programmer implements Employee {
  @override
  void work() {
    print("Write code");
  }
}

class HRManager implements Employee {
  @override
  void work() {
    print("Hire employee");
  }
}

class Boss implements Employee {
  @override
  void work() {
    print("Leading people");
  }
}
