import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Professor Online"),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const ListTile(
              title: Text("Dados pessoais"),
              leading: Icon(Icons.person),
            ),
            const ListTile(
              title: Text("Horários"),
              leading: Icon(Icons.watch_later),
            ),
            const ListTile(
              title: Text("Calendário letivo"),
              leading: Icon(Icons.calendar_month),
            ),
            const ListTile(
              title: Text("Minhas turmas"),
              leading: Icon(Icons.people),
            ),
            const ListTile(
              title: Text("Frequência"),
              leading: Icon(Icons.check),
            ),
            const ListTile(
              title: Text("Avaliações e notas"),
              leading: Icon(Icons.text_snippet),
            ),
            const ListTile(
              title: Text("Cronograma"),
              leading: Icon(Icons.list_alt),
            ),
            const ListTile(
              title: Text("Atividades"),
              leading: Icon(Icons.today_rounded),
            ),
            ListTile(
              title: const Text("Sair da conta"),
              leading: const Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
            ),
            const Divider(
              color: Colors.grey,
              height: 20.0,
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/teacher.png",
              height: 100.0,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),

            Container(
                color: Color.fromARGB(255, 162, 235, 186),
                width: MediaQuery.of(context).size.width,
                height: 80.0,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Professor Online Seduc", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                      Text("O portal do professor da rede estadual de ensino do Ceará", style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal))
                    ],
                  ),
            ),

            Container(
              color: Color.fromARGB(255, 96, 235, 158),
              width: MediaQuery.of(context).size.width,
              height: 30.0,
              child: const Center(child: Text("Bem-vindo, professor!", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),)),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 8.0),
              child: Icon(Icons.inbox, size: 80.0),
            ),

            const Padding(
              padding: EdgeInsets.only(top: 4.0),
              child: Text("Nenhum item encontrado!", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
            )
          ]
        ),
      ),
    );
  }
}
