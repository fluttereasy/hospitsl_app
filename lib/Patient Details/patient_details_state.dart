part of 'patient_details_bloc.dart';

@immutable
abstract class PatientDetailsState {}

class PatientDetailsInitial extends PatientDetailsState {}

class PatientDetailsInserting extends PatientDetailsState{}

class PatientDetailsInserted extends PatientDetailsState{}

class PatientDetailsNotInserted extends PatientDetailsState{}


//==========================================================

class PatientDetailsNotSubmitted2 extends PatientDetailsState{}

class PatientDetailsSubmitted2 extends PatientDetailsState{}

class PatientDetailsSubmitting2 extends PatientDetailsState{}

//==========================================================

class SentDateTimeState extends PatientDetailsState{}

class FailedSendDateTimeState extends PatientDetailsState{}

class SendingDateTimeState extends PatientDetailsState{}