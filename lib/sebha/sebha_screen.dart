
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget {


  @override
  _SebhaState createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  int counter=0;
  int rcounter=0;
  String txt='سبحان الله ';
  Color color =Colors.white;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('MY SEBHA'),
        centerTitle:true ,
        leading: Icon(Icons.menu),
      ),
      body: Container(
        width: double.infinity,
        height: size.height,
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage(
           'assets/images/tree.png',

          ),
            fit: BoxFit.cover,
        ),



      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text('$counter',style: TextStyle(
               fontSize: 60,
               fontWeight: FontWeight.bold,
               color: Colors.white
             ),),
              Text('$txt',style: TextStyle(
               fontSize: 60,
               fontWeight: FontWeight.bold,
               color: color
             ),),
              SizedBox(
                height: 50

                ,
              ),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)
,
                  color: Colors.white30,

                ),

            child: Text('عدد الدورة=$rcounter ',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),)

              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [
              //     ElevatedButton(
              //
              //       style: ElevatedButton.styleFrom(
              //         primary: Colors.pink,
              //         // shape: CircleBorder(),
              //         // fixedSize: Size(60,60)
              //       ),
              //       onPressed:() {
              //         setState(() {
              //           counter=0;
              //         });
              //
              //       },
              //       child: Text('رجوع',style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //           fontSize: 13
              //       ),),
              //     ),
              //     ElevatedButton(
              //
              //       style: ElevatedButton.styleFrom(
              //           primary: Colors.pink,
              //           shape: CircleBorder(),
              //           fixedSize: Size(70,70)
              //       ),
              //       onPressed:() {
              //
              //       },
              //       child:  Text('$counter',style: TextStyle(
              //           fontSize: 60,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.white
              //       ),),
              //     )
              //   ],
              // ),

             SizedBox(
               height: 250

               ,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 ElevatedButton(

                   style: ElevatedButton.styleFrom(
                       primary: Colors.pink,
                     shape: CircleBorder(),
                     fixedSize: Size(60,60)
                   ),
                   onPressed:() {
                     setState(() {
                       counter=0;
                     });

                   },
                   child: Text('رجوع',style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 13
                   ),),
                 ),
                 ElevatedButton(

                   style: ElevatedButton.styleFrom(
                       primary: Colors.pink,
                       shape: CircleBorder(),
                       fixedSize: Size(70,70)
                   ),
                   onPressed:() {
                     setState(() {
                       counter++;
                       if (counter<=33 ){
                         txt ='سبحان الله';
                       }
                       else if(counter>33 &&counter<66){
                         txt='الحمد لله';
                         color =Colors.pinkAccent;
                       }
                       else if (
                       counter >66 &&counter <=99
                       ){
                         txt='الله اكبر';
                         color =Colors.purpleAccent;

                       }

                       else if(counter==100){




                         txt='لا اله الا الله';
                         color =Colors.blueGrey;


                       }
                       else if(counter ==0 ||counter >100){
                         txt='سبحان الله';
                         counter=0;
                         color =Colors.white;
                         rcounter++;

                       }
                     });

                   },
                   child: Icon(Icons.add),
                 )
               ],
             ),


]
        ),


      )
    );

  }
}
