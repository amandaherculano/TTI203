import 'package:flutter/material.dart';

void main () => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( //imutavel
      appBar: AppBar( //imutavel
        title: const Text('Aplicações Responsiva'),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue, //nao é const, émutavel, entao MaterialApp n pode ser const
      ), 
      body: LayoutBuilder( builder: (context, constrainsts){
        return 
          constrainsts.maxWidth <= 768 ?
          MobileLayout() :
          WebLayout();
      }),
    );
  }
}

class MobileLayout extends StatefulWidget {
  State <StatefulWidget> createState(){
    return MobileLayoutState();
  }
}

class MobileLayoutState extends State<MobileLayout> 
  with SingleTickerProviderStateMixin{

    TabController? tabController;

    @override
    void initState(){
      super.initState();
      tabController = TabController(length: 2, vsync: this);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.blue,
          controller: tabController,
          tabs:
          [
            const Tab(text: 'Aba 1'),
            const Tab(text: 'Aba 2'),
          ],
        ),

        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              Container(color: Colors.red),
              Container(color: Colors.green),
            ],
          ),
        ),
    ]
    );
  }

class WebLayout extends StatefulWidget {
  State <StatefulWidget> createState(){
    return WebLayoutState();
  }
}

class WebLayoutState extends State<WebLayout>{
  @override
  Widget build(BuildContext context){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, //spaceFlex
      children: [
        Expanded(
          child: Card(
            child: Center(
              child: Text('Primeiro conteudo')
            )
          )
        ),
          Expanded(
            child: Card(
              child: Center(
                child: Text('Segundo conteudo')
              )
            ),
          )
      ],
    );
  }
}


