import 'package:get_it/get_it.dart';
import 'package:pampacare/app/pages/appointment/controller/appointment_controller.dart';
import 'package:pampacare/app/pages/register_dog/controller/register_dog_controller.dart';

class Injection {
  final getIt = GetIt.instance;

  setup() {
    getIt.registerSingleton<IRegisterDogController>(RegisterDogController());
    getIt.registerSingleton<AppointmentController>(AppointmentController());
  }
}
