
import 'package:cadastroflutter/RowButton.dart';
import 'package:flutter/material.dart';

import 'FormItem.dart';

final List <Widget> form = <Widget>[
  formItem(
      text: 'TELA DE CADASTRO',
      applyBold: true,
      padding: const EdgeInsets.only(top: 16.0)
  ),
  formItem(
    text: 'NOME:',
    labelText: 'Digite o nome',
    padding: const EdgeInsets.only(top: 24.0),
  ),
  formItem(
    text: 'ENDEREÇO:',
    labelText: 'Digite o endereço',
    padding: const EdgeInsets.only(top: 24.0),
  ),
  formItem(
    text: 'EMAIL:',
    labelText: 'Digite o email',
    padding: const EdgeInsets.only(top: 24.0),
  ),
  Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: rowButton
  ),
];