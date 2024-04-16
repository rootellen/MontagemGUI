import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: false,
      ),
      home: const MontagemGUI(title: 'Exercício Montagem GUI'),
    );
  }
}

class MontagemGUI extends StatefulWidget {
  const MontagemGUI({super.key, required this.title});
  final String title;

  @override
  State<MontagemGUI> createState() => _MontagemGUIState();
}

class _MontagemGUIState extends State<MontagemGUI> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(widget.title),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'TELA DE CADASTRO',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 15),
              const Text(
                  'NOME:'
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o nome',
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                  'ENDEREÇO:'
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o endereço',
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                  'eMAIL:'
              ),
              const SizedBox(height: 8),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o email',
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueAccent)
                    ),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                          title: const Text('Cancelou'),
                          actions: <Widget>[
                            TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('OK'),
                            ),
                          ],
                      ),
                    ),
                    child: const Text("Cancelar", style: TextStyle(color: Colors.white)),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.blueAccent),
                    ),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Salvou'),
                        actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('OK'),
                          ),
                        ],
                        ),
                      ),
                    child: const Text("Salvar", style: TextStyle(color: Colors.white),),
                  ),
              ],)
            ],
          ),
      ),
    );
  }
}
