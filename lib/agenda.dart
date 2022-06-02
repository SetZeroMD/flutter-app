import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projetos_2_noite_menu/MenuNavegacao.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Agenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuNavegacao(),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Agenda"),
      ),
      //----Calendario------
      body: SfCalendar(
        view: CalendarView.month,
        dataSource: MeetingDataSource(_getDataSource()),
        monthViewSettings: MonthViewSettings(
            showAgenda: true,
            appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
      ),
    );
  }

  // Agendamentos
  List<Evento> _getDataSource() {
    final List<Evento> meetings = <Evento>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    meetings.add(Evento(
        'Corte de cabelo', startTime, endTime, const Color(0xFF0F8644), true));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Evento> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].inicio;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].fim;
  }

  @override
  String getSubject(int index) {
    return appointments![index].nome;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Evento {
  Evento(this.nome, this.inicio, this.fim, this.background, this.isAllDay);

  String nome;
  DateTime inicio;
  DateTime fim;
  Color background;
  bool isAllDay;
}
