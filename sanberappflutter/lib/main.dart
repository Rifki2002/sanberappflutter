import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterPage());
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                counter--;
                setState(() {});
              },
              child: const Icon(Icons.remove),
            ),
            const SizedBox(width: 20),
            Text('Nilai Counter: $counter'),
            const SizedBox(width: 20),
            InkWell(
              onTap: () {
                counter++;
                setState(() {});
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

//ANALISIS TERHADAP SETSTATE
// SetState digunakan dalam flutter untuk memberitahu framework bahwa 
//data yang dipegang oleh objek State telah berubah dan berpengaruh pada 
//perubahan tampilan 


//APA KEGUNAANNYA
//Kegunaan dari SetState dapat merubah tampilan menjadi lebih dinamis dengan 
//mengubah data lama menjadi data yang baru berdasarkan interaksi dari pengguna
