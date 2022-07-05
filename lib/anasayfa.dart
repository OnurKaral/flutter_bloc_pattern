import 'package:bloc_pattern/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Anasayfa extends StatelessWidget {

  var tfSayi1 = TextEditingController();
  var tfSayi2 = TextEditingController();
  int sonuc = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Bloc Pattern"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<AnasayfaCubit,int>(builder: (context,sonuc) {
              return Text("Sonuc: $sonuc",style: TextStyle(fontSize: 30),);
            }),
            TextField(controller: tfSayi1, decoration: const InputDecoration(labelText: "Sayı 1",),),
            TextField(controller: tfSayi2, decoration: const InputDecoration(labelText: "Sayı 2",),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){
                String alinanSayi1= tfSayi1.text;
                String alinanSayi2= tfSayi2.text;

                context.read<AnasayfaCubit>().topla(alinanSayi1, alinanSayi2);
              }, child: const Text("Toplama")),
              ElevatedButton(onPressed: (){
                String alinanSayi1= tfSayi1.text;
                String alinanSayi2= tfSayi2.text;

                context.read<AnasayfaCubit>().carp(alinanSayi1, alinanSayi2);

              }, child: const Text("Çarpma"))
            ],
            )
          ],
        ),
      ),
    );
  }
}
