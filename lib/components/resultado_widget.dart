import 'package:flutter/material.dart';

class ResultadoWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool venceu;
  final VoidCallback onReiniciar;

  ResultadoWidget({
    required this.venceu,
    required this.onReiniciar,
  });

  _getCor() {
    if (!venceu) {
      return Colors.red[300];
    }  
    return Colors.green[300];
  }

  IconData _getIcon() {
    if (!venceu) {
       return Icons.sentiment_very_dissatisfied;
    }
    return Icons.sentiment_very_satisfied;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: _getCor(),
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                _getIcon(),
                color: Colors.black,
                size: 35,
              ),
              onPressed: onReiniciar,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(120);
}
