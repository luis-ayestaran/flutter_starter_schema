import 'package:flutter/material.dart';

import 'package:flutter_starter_schema/blocs/blocs.dart';

class ThemeDialog extends StatefulWidget {
  ThemeDialog({Key? key}) : super(key: key);

  @override
  _ThemeDialogState createState() => _ThemeDialogState();
}

class _ThemeDialogState extends State<ThemeDialog> {
  ThemeMode? _selectedTheme;

  @override
  Widget build(BuildContext context) {
    _selectedTheme = themeChangeNotifier.currentTheme;

    return ListTile(
      title: Text('Tema de la aplicación'),
      subtitle: Text('Selecciona el tema que más te guste para tu aplicación'),
      leading: Icon(Icons.dark_mode),
      trailing: Text(
        _selectedTheme == ThemeMode.system ? 'Sistema' :
        _selectedTheme == ThemeMode.dark ? 'Oscuro' :
        _selectedTheme == ThemeMode.light ? 'Claro' : ''
      ),
      onTap: () {
        _showAlert( context );
      },
    );
  }

  void _showAlert( BuildContext context ) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('Tema de la app'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Escoge el tema de tu preferencia:'),
              SizedBox( height: 6 ),
              RadioListTile<ThemeMode>(
                title: const Text( 'Claro' ),
                value: ThemeMode.light,
                groupValue: _selectedTheme,
                onChanged: (ThemeMode? newValue) {
                  _changeTheme( newValue! );
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text( 'Oscuro' ),
                value: ThemeMode.dark,
                groupValue: _selectedTheme,
                onChanged: (ThemeMode? newValue) {
                  _changeTheme( newValue! );
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text( 'Sistema' ),
                value: ThemeMode.system,
                groupValue: _selectedTheme,
                onChanged: (ThemeMode? newValue) {
                  _changeTheme( newValue! );
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      }
    );
  }

  void _changeTheme( ThemeMode newValue ) {
    _selectedTheme = newValue;
    themeChangeNotifier.changeCurrentTheme( newValue );
    setState(() {});
  }
}