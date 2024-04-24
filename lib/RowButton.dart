
import 'package:flutter/material.dart';

import 'Toast.dart';
import 'button.dart';

get rowButton => Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      button(
          text: 'CANCELAR',
          onPressed: (){toast(message: 'Você clicou em CANCELAR');}
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
      ),
      button(
          text: 'SALVAR',
          onPressed: (){toast(message: 'Você clicou em SALVAR');}
      ),
    ],
  );