
import 'package:flutter/cupertino.dart';

import 'button.dart';

get rowButton => Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        button(text: 'CANCELAR'),
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
        ),
        button(text: 'SALVAR'),
      ],
    );