import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Configuración de Cuenta',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuenta de Google'),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountProtectionSection(),
            SizedBox(height: 16),
            PrivacyCheckupSection(),
            SizedBox(height: 16),
            MoreInformationSection(),
            SizedBox(height: 16),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}

class AccountProtectionSection extends StatelessWidget {
  const AccountProtectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.security, color: Colors.green, size: 50),
        title: const Text('Tu cuenta está protegida'),
        subtitle: const Text(
          'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
        ),
        trailing: TextButton(
          onPressed: () {},
          child:
              const Text('Ver detalles', style: TextStyle(color: Colors.blue)),
        ),
      ),
    );
  }
}

class PrivacyCheckupSection extends StatelessWidget {
  const PrivacyCheckupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.privacy_tip, color: Colors.blue, size: 50),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Verificación de privacidad',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Realizar la Verificación de privacidad',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MoreInformationSection extends StatelessWidget {
  const MoreInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('¿Buscas otra información?',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        ListTile(
          leading: const Icon(Icons.search),
          title: const Text('Buscar en la Cuenta de Google'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.help_outline),
          title: const Text('Ver las opciones de ayuda'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.feedback),
          title: const Text('Enviar comentarios'),
          onTap: () {},
        ),
      ],
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 20),
      child: Text(
        'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos. Más información',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
