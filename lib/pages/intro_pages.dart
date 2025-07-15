import 'package:ecomerse_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPages extends StatelessWidget {
  const IntroPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/nike.png", height: 240,),

              Text('Just Do It',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),

              SizedBox(height: 20,),

              Text("Brand new sneakers and custom kicks made with premium quality",
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey,
              ),
              textAlign: TextAlign.center,),
              
              SizedBox(height: 30,),

              GestureDetector(
                onTap: ()=>
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => HomePage(),)
                  ),
                child: Container(
                  height: 50,
                  width: 180,
                  decoration:BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ) ,
                
                  child: Center(
                    child: Text("Shop Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              )
            ],
          
            
          ),
        ),
      ),
    );
  }
}