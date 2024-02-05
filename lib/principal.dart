import 'package:flutter/material.dart';
import 'receitas.dart';
import 'dialogos.dart';


int ola = 0;

class principal extends StatefulWidget {
  const principal({super.key});

  @override
  State<principal> createState() => _principalState();
}

class _principalState extends State<principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 163, 120, 120),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.20,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.13,
              /*decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(25, 95, 255, 1.0),
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(35.0),
              ),*/
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: TextButton(
                    child: const Text(
                        "Receitas",
                        style: TextStyle(
                          //color: Color.fromRGBO(25, 95, 255, 1.0),
                          color: Color.fromRGBO(225, 227, 155, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => receitas()));
                    },
                    ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.60,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.13,
              /*decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(25, 95, 255, 1.0),
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(35.0),
              ),*/
              child: Padding(
                padding: EdgeInsets.all(0.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: TextButton(
                    child: const Text(
                        "Adicionar",
                        style: TextStyle(
                          //color: Color.fromRGBO(25, 95, 255, 1.0),
                          color: Color.fromRGBO(225, 227, 155, 1),
                          decoration: TextDecoration.none,
                        ),
                      ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return FeedbackDialog();
                        },
                      ).then((value) => {
                            if (ola == 1)
                              {textoVazio(context), ola = 0}
                            else if (ola == 2)
                              {categoriaVazia(context), ola = 0}
                            else if (ola == 3)
                              {receita_adicionada(context), ola = 0}
                          });
                    },
                    ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}









class FeedbackDialog extends StatefulWidget {
  @override
  _FeedbackDialogState createState() => _FeedbackDialogState();
}

class _FeedbackDialogState extends State<FeedbackDialog> {
  String? selectedValue;
  final TextEditingController mensagemController = TextEditingController();
  final TextEditingController ingredientesController = TextEditingController();

  @override
  Widget build(context) {
    return AlertDialog(
      backgroundColor: const Color.fromRGBO(225, 227, 155, 1),
      scrollable: true,
      content: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Form(
          child: Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: const Color.fromRGBO(225, 227, 155, 1),
                ),
                child: DropdownButton(
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 163, 120, 120),
                  ),
                  style: const TextStyle(color: Colors.green),
                  hint: const Text("categoria",
                      style: TextStyle(color: Color.fromARGB(255, 163, 120, 120), fontSize: 17)),
                  value: selectedValue,
                  items: const [
                    DropdownMenuItem(
                      value: '0',
                      child: Text("Sem categoria",
                          style: TextStyle(color: Color.fromARGB(255, 163, 120, 120), fontSize: 17)),
                    ),
                    DropdownMenuItem(
                      value: '1',
                      child: Text("Arroz",
                          style: TextStyle(color: Color.fromARGB(255, 163, 120, 120), fontSize: 17)),
                    ),
                    DropdownMenuItem(
                      value: '2',
                      child: Text("Carne",
                          style: TextStyle(color: Color.fromARGB(255, 163, 120, 120), fontSize: 17)),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value;
                    });
                  },
                  underline: Container(
                    height: 1,
                    color: const Color.fromARGB(255, 163, 120, 120),
                  ),
                ),
              ),
              TextFormField(
                maxLines: 1,
                style: const TextStyle(color: Color.fromARGB(255, 163, 120, 120)),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Color.fromARGB(255, 163, 120, 120)),
                  labelText: "Titulo",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 163, 120, 120)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 163, 120, 120),
                    ),
                  ),
                ),
                controller: ingredientesController,
              ),
              TextFormField(
                maxLines: null,
                style: const TextStyle(color: Color.fromARGB(255, 163, 120, 120)),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Color.fromARGB(255, 163, 120, 120)),
                  labelText: "Ingredientes",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 163, 120, 120)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 163, 120, 120),
                    ),
                  ),
                ),
                controller: ingredientesController,
              ),
              TextFormField(
                maxLines: null,
                style: const TextStyle(color: Color.fromARGB(255, 163, 120, 120)),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: Color.fromARGB(255, 163, 120, 120)),
                  labelText: "Receita",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 163, 120, 120)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 163, 120, 120),
                    ),
                  ),
                ),
                controller: mensagemController,
              ),
            ],
          ),
        ),
      ),
      actions: [
        Center(
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor:const Color.fromARGB(255, 163, 120, 120)),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Color.fromRGBO(225, 227, 155, 1)),
                ),
                onPressed: () {
                  if (mensagemController.text == '') {
                    //print("mensagem vaiza");
                    ola = 1;
                    Navigator.pop(context);
                  } else if (selectedValue == null) {
                    //print("categoria vazia");
                    ola = 2;
                    Navigator.pop(context);
                  } else {
                    //enviarFeedback(mensagem, selectedValue.toString());
                    mensagemController.text = '';
                    ola = 3;
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}