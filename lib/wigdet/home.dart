import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key});

 @override
State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _mensaje(String message) {
    final snackbar = SnackBar(
      content: Text(message),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(

      length: 4, 
      child: Scaffold(
        drawer: Drawer(

          child: ListView(
            padding: EdgeInsets.zero,

            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),

                child: Text('Menu Principal'),
              ),
              
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  _mensaje('Item 1');
                },
              ),
              
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {
                  _mensaje('Menu 2');
                },
              ),
            ],
          ),
        ),
        
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: const Color.fromARGB(255, 22, 163, 27),
          iconTheme: const IconThemeData(

            color: Colors.white,
          ),
         
          actions: [
            IconButton(

              icon: const Icon(Icons.search),
              onPressed: () {
                _mensaje('Search', );
              },
            ),
            
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                _mensaje('More');
              },
            ),
          ],
          
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt, color: Colors.white,)),

              Tab(text: 'CHATS'),
              Tab(text: 'ESTADOS',),
              Tab(text: 'LLAMADAS',)
            ],
          ),
        ),
       
        body: TabBarView(

          children: [
            Icon(Icons.camera_alt),
            Column(
              children: [
                
                ListTile(

                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  
                  title: Text('Mami'),
                  subtitle: Text('Ultimo mensaje'),
                  trailing: Text('Ayer'),
                ),
                
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.orange,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                 
                  title: Text('Papi'),
                  subtitle: Text('Ultimo mensaje'),
                  trailing: Text('Ayer'),
                ),
              ],
            ),
            
            ListView(
              
              children: [
                
                ListTile(
                  
                  leading: Stack(
                    
                    children: [  
                      
                      CircleAvatar(
                        
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 27, 209, 33),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2),
                          ),
                          
                          child: Icon(
                            Icons.add,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  title: Text('Mi estado'),
                  subtitle: Text('Toca para Agregar un Estado'),
                ),
                Divider(),
                Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Estados Vistos'),
                ),
                
                ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 210, 164, 213),
                  child: Icon(Icons.person, color: Colors.white),
                ),
                
                title: Text('Mami'),
                subtitle: Text('Hace 10 horas'),
                ),
                
                ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 78, 183, 232),
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('Papi'),
                subtitle: Text('Hace 23 horas'),
                ),
                
                ExpansionTile(
                  title: Text('Estados Silenciados'),
                  children: [
                    
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 213, 240, 94),
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text('Tio'),
                      subtitle: Text('Hace 3 dias'),
                    ),
                    
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 141, 230, 239),
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                      title: Text('Tia'),
                      subtitle: Text('Hace 25 dias'),
                    ),
                  ],
                ),
              ],
            ), // Pestaña de STATU
            Icon(Icons.call),   
          ],
        ),
      ),
    );
  }
}