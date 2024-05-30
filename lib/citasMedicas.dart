import 'package:flutter/material.dart';
import 'package:flutter_application_1/medicinaGeneral.dart';

class citasMedicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Citas Médicas'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => medicinaGeneral()),
                );
                },
                child: Text('Crear Cita'),
                ),
                ),
    );
  }
}