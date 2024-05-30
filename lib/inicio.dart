import 'package:flutter/material.dart';
import 'package:flutter_application_1/citasMedicas.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Hospital'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
       body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: opcionesAcademicas.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: IconButton(
              onPressed: () {
                if (opcionesAcademicas[index]['codigo'] == '001') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => citasMedicas(),
                    ),
                  );
                } else {
                  // Puedes agregar más navegaciones para otros códigos aquí
                }
              },
                icon: Column(
                  children: [
                    Icon(opcionesAcademicas[index]["icono"], color: Colors.orange,),
                    Text(opcionesAcademicas[index]["titulo"]),
                    Text(opcionesAcademicas[index]["codigo"]),
                  ],
                ),
              ));
            },
          ),
        );
  }
}


List opcionesAcademicas = [
  {
    'codigo': '001',
    'titulo': 'Citas Médicas',
    'icono': Icons.event_available, // Icono más apropiado para citas
    
  },
  {
    'codigo': '002',
    'titulo': 'Urgencias',
    'icono': Icons.local_hospital, // Icono más apropiado para urgencias
  },
  {
    'codigo': '003',
    'titulo': 'Especialistas',
    'icono': Icons.medical_services, // Icono más apropiado para especialistas
  },
  {
    'codigo': '004',
    'titulo': 'Farmacia',
    'icono': Icons.local_pharmacy, // Icono más apropiado para farmacia
  },
  {
    'codigo': '005',
    'titulo': 'Pacientes',
    'icono': Icons.person, // Icono más apropiado para pacientes
  },
  {
    'codigo': '006',
    'titulo': 'Terapias',
    'icono': Icons.spa, // Icono más apropiado para terapias
  },
  {
    'codigo': '007',
    'titulo': 'Laboratorios',
    'icono': Icons.science, // Icono más apropiado para laboratorios
  },
  {
    'codigo': '008',
    'titulo': 'Sangre',
    'icono': Icons.bloodtype, // Icono más apropiado para sangre
  },
  {
    'codigo': '009',
    'titulo': 'Rehabilitación',
    'icono': Icons.blind // Icono más apropiado para rehabilitación
  },
  {
    'codigo': '010',
    'titulo': 'Consultas',
    'icono': Icons.chat, // Icono más apropiado para consultas
  },
  {
    'codigo': '011',
    'titulo': 'Informes',
    'icono': Icons.insert_chart, // Icono más apropiado para informes
  },
  {
    'codigo': '012',
    'titulo': 'Calendario',
    'icono': Icons.calendar_today, // Icono más apropiado para calendario
  },
  {
    'codigo': '013',
    'titulo': 'Pagos',
    'icono': Icons.payment, // Icono más apropiado para pagos
  },
  {
    'codigo': '014',
    'titulo': 'Contactos',
    'icono': Icons.contact_phone, // Icono más apropiado para contactos
  },
  {
    'codigo': '015',
    'titulo': 'Información',
    'icono': Icons.info, // Icono más apropiado para información
  }
];

// void llamadoModalMenu(BuildContext context, String tituloAppBar, IconData menuIcono , codigo) {
//   showModalBottomSheet(
//     isScrollControlled: false,
//     context: context,
//     builder: (context) {
//       return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 255, 0, 0),
//           foregroundColor: Colors.white,
//           title: Text(tituloAppBar),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(18.0),
//               child: Icon(menuIcono),
//             ),
//           ],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(Icons.file_copy),
//           backgroundColor: Color.fromARGB(255, 27, 255, 2),
//           foregroundColor: Colors.black,
//         ),
//         body: codigo =="006" 
//         ? llamadoTareas()
//         :codigo == "009"
//         ? llamadoEventos()
//         : codigo  == "001"
//         ? llamadoNotas()
//         :Text("falatan datos")

//       );
//       },
//   );
// }


//////////////
// llamadoTareas(){
//  return ListView.builder(
//           itemCount: tareas.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text(tareas[index]['nombre']),
//               subtitle: Text(tareas[index]["descripcion"].toString()),
//               onTap: (){},
//             );
//           },
//         );
// }
// llamadoEventos(){
// return ListView.builder(
//           itemCount: eventos.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               child: ListTile(
//               title: Text(eventos[index]['titulo']),
//               subtitle: Text(eventos[index]["lugar"]),
//               onTap: (){},

//               ),

//             );
//           },
//         );
// }

// llamadoNotas(){
//   return ListView.builder(
//           itemCount: notas.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Card(
//               child: ListTile(
//               title: Text(notas[index]['nombre']),
//               subtitle: Text(notas[index]["profesor"]),
//               onTap: (){},

//               ),

//             );
//           },
//         );

// }}