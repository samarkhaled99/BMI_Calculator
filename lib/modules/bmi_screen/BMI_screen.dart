import 'dart:math';
import 'package:bmi_calculator2/modules/bmi_result/BMI_result.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {

  bool isMale = true;
  double height =150;
  double weight =60;
  double age =18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'BMI Calculator'
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  children:[
                    Expanded(

                      child: GestureDetector(
                        onTap: ()
                        {
                          setState(() {
                            isMale = true;
                          });
                        }
                        ,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              /* Icon(Icons.face_sharp,
                            size: 70.0,


                          ),  */
                              /* Image(image: AssetImage(
                            'image/600px-Male_Blue.png' ),
                              height: 90.0, width: 90.0,
), */
                              Image(image: NetworkImage(
                                  'https://www.iconpacks.net/icons/2/free-male-symbol-icon-2239-thumb.png'
                              ),
                                width: 90.0,
                                height: 90.0,

                              ),
                              SizedBox(height: 10.0),
                              Text('MALE',style: TextStyle( fontSize: 20.0,
                                  fontWeight: FontWeight.bold)),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color:isMale? Colors.blue: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width:20.0),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            isMale = false;
                          });

                        },

                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              /* Icon(Icons.face_retouching_natural,
                           size: 70.0,), */
                              /*Image(image: AssetImage(
                                'FemalePink.png'),
                              height: 100.0, width: 100.0,
                            ),*/
                              Image(image: NetworkImage(
                                  'https://img.icons8.com/ios/452/female.png'
                              ),
                                width: 90.0,
                                height: 90.0,
                              ),
                              SizedBox(height: 10.0),
                              Text('FEMALE',style: TextStyle( fontSize: 20.0,
                                  fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color:!isMale ? Colors.blue : Colors.grey[300],
                          ),

                        ),
                      ),
                    ) ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Expanded(
              child: Column(
                children: [
                  Text('HEIGHT',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height.round()}',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                      )),
                      SizedBox(width: 5.0),
                      Text('CM'),
                    ],
                  ),
                  Slider(value: height, max:220,min:70.0,
                      onChanged: (value){

                        setState(() {
                          height= value;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT',style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 5.0,),
                            Text('${weight.round()}', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    weight--;
                                  });
                                },
                                  heroTag: 'weight--',
                                  mini: true,
                                  child: Icon(Icons.remove),),
                                SizedBox(width: 5.0),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  heroTag: 'weight++',
                                  mini: true,
                                  child:Icon(Icons.add) ,
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[300],
                        )
                    ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(height: 5.0,),
                            Text('${age.round()}', style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed:(){
                                  setState(() {
                                    age--;
                                  });
                                },
                                  heroTag: 'age--',
                                  mini: true,
                                  child: Icon(Icons.remove),),
                                SizedBox(width: 5.0),
                                FloatingActionButton(onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                  heroTag: 'age++',
                                  mini: true,
                                  child:Icon(Icons.add) ,
                                )
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.grey[300],
                        )
                    ),
                  )],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.amber,
            height: 50.0,
            child: MaterialButton(
              onPressed: (){
                double result= weight/ pow(height /100 ,2);
                print(
                    result.round()
                );
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>BMIResult(
                          ismale: isMale,
                          result:  result.round() ,
                          Age: age,
                        )
                    ));
              },
              child: Text('CALCULATE',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),
            ),
          ),
        ],
      ),

    );
  }
}