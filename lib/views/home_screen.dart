import 'package:flutter/material.dart';
import '../widgets/edit_message_dialog.dart';

class EmergencyHomePage extends StatefulWidget {
  const EmergencyHomePage({super.key});

  @override
  _EmergencyHomePageState createState() => _EmergencyHomePageState();
}

class _EmergencyHomePageState extends State<EmergencyHomePage> {
  String emergencyMessage = "I'm having an emergency at @loc, send help!";

  void _editMessage() async {
    final updatedMessage = await showDialog<String>(
      context: context,
      builder: (context) => EditMessageDialog(initialMessage: emergencyMessage),
    );

    // Si l'utilisateur a modifié le message, il est mis à jour dans l'état
    if (updatedMessage != null) {
      setState(() {
        emergencyMessage = updatedMessage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Message d'urgence"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Message actuel :',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              emergencyMessage,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            ElevatedButton.icon(
              onPressed: _editMessage,  // Cette fonction sera appelée au clic
              icon: const Icon(Icons.edit),    // Icône qui ressemble à un crayon pour la modification
              label: const Text('Modifier le message'),  // Le texte visible sur le bouton
            )
            ,
          ],
        ),
      ),
    );
  }
}
