import 'package:bloc/bloc.dart';
import 'package:hospital_app/Doctor/DoctorServices/doctor_services.dart';
import 'package:meta/meta.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorServices doctorServices = DoctorServices();
  List<String> doctorList = [];
  DoctorBloc() : super(DoctorInitial()) {
    on<DoctorLoadingEvent>((event, emit) async {
      try {
        print(event.rowID);

        doctorList =
            await doctorServices.getDoctorList(event.rowID) as List<String>;

        emit(DoctorLoadedState(doctorList));
        on<AppointmentButtonCLicked>((event, emit) => {
              emit(DoctorDetailsFetchState()),
            });
      } catch (e) {
        emit(DoctorFailedState());
      }
    });
  }
}
