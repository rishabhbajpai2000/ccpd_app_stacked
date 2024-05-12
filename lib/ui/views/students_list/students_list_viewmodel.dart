import 'package:ccpd_app_stacked/models/student.dart';
import 'package:stacked/stacked.dart';

class StudentsListViewModel extends BaseViewModel {
  List<Student> students = [
    const Student(
      userId: '1',
      firstName: 'John',
      lastName: 'Doe',
      rollNumber: '2000320120136',
      sgpa: '8.0',
    ),
    const Student(
      userId: '2',
      firstName: 'Jane',
      lastName: 'Doe',
      rollNumber: '123457',
      sgpa: '8.1',
    ),
    const Student(
      userId: '3',
      firstName: 'Alice',
      lastName: 'Smith',
      rollNumber: '123458',
      sgpa: '8.2',
    ),
    const Student(
      userId: '4',
      firstName: 'Bob',
      lastName: 'Smith',
      rollNumber: '123459',
      sgpa: '8.3',
    ),
  ];
}
