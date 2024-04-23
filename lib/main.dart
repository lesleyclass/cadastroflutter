import 'package:flutter/material.dart';

void main() {
  MyApp myapp = const MyApp();
  runApp(myapp);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const TextStyle textButtonStyle = TextStyle(color: Colors.white);
  get textFormFieldBorder => OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
    borderSide: const BorderSide(),
  );

  TextStyle textStyle({bool applyBold = false}) {
    TextStyle textStyle;
    if (applyBold) {
      textStyle = const TextStyle(fontWeight: FontWeight.bold);
    } else {
      textStyle = const TextStyle();
    }
    return textStyle;
  }
  Column formItem({required String text, String? labelText, bool applyBold = false}) {
    List <Widget> children = <Widget>[
      Padding(
        padding: const EdgeInsets.only(),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
              text,
              style: textStyle(applyBold: applyBold)
          ),
        ),
      ),

    ];
    if (labelText != null) {
      children.add(
        Padding(
          padding: const EdgeInsets.only(),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: labelText,
                border: textFormFieldBorder,
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: children,
    );
  }

  get buttonStyle => ButtonStyle(
    elevation: MaterialStateProperty.all(5),
    backgroundColor: MaterialStateProperty.all(
      Colors.blue.shade400,
    ),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Exercício Montagem de GUI',
            style: textButtonStyle,
          ),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 24.0,
            ),
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: formItem(text: 'TELA DE CADASTRO', applyBold: true),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: formItem(text: 'NOME:', labelText: 'Digite o nome'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: formItem(text: 'ENDEREÇO:', labelText: 'Digite o endereço'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: formItem(text: 'EMAIL:', labelText: 'Digite o email'),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: buttonStyle,
                          child: const Text(
                            'CANCELAR',
                            style: textButtonStyle,
                          ),
                          onPressed: () {},
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.0,
                          ),
                        ),
                        ElevatedButton(
                          style: buttonStyle,
                          child: const Text(
                            'SALVAR',
                            style: textButtonStyle,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
