import 'package:belajar_flutter/api/provider/divisi.dart';
import 'package:belajar_flutter/model/divisi.model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/utils/response.dart';

class ListViewDivisi extends StatefulWidget {
  const ListViewDivisi({super.key});

  @override
  State<ListViewDivisi> createState() => _ListViewDivisiState();
}

class _ListViewDivisiState extends State<ListViewDivisi> {
  DivisiProvider divisiProvider = DivisiProvider();

  @override
  void initState() {
    super.initState();
    getDivisi();
  }

  void getDivisi() {
    divisiProvider.divisi(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter List View 6"),
      ),
      body: ChangeNotifierProvider<DivisiProvider>.value(
        value: divisiProvider,
        child: Consumer<DivisiProvider>(
          builder: (ctx, provider, _) {
            switch (provider.list.state) {
              case ResponseState.LOADING:
                return Text("Loading");
              case ResponseState.COMPLETE:
                return provider.data!.isEmpty
                    ? Text("Data Kosong")
                    : buildScreen(context, provider.data!);
              case ResponseState.ERROR:
                return Center(
                    child: Text(
                      'Terjadi kesalahan pada server',
                    ),
                  );
              default:
                return Text("Data Kosong");
            }
          },
        ),
      ),
    );
  }

  Widget buildScreen(context, List<DivisiModel> datas) {
    return RefreshIndicator(
      onRefresh: () async {
        getDivisi();
      },
      child:  ListView.builder(
            itemCount: datas.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('${datas[index].nama} pressed!'),
                        ));
                      },
                      title: Text(datas[index].nama ?? ''),
                      subtitle: Text(datas[index].kode ?? ''),
                      ));
            }),
    );
  }
}
