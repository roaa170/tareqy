import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class RateUsScreen extends StatelessWidget {
  const RateUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff05035b),

        surfaceTintColor:  const Color(0xff05035b),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        color: const Color(0xff05035b),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),

              const Text("How much it's easy to you?",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),),
              const SizedBox(height: 40,),
              const Text("We give you 5 stars for trying to learn\n How are we doing helping you ?",style: TextStyle(color: Colors.grey,fontSize: 17,),textAlign: TextAlign.center,),
              const SizedBox(height: 20,),

              AnimatedRatingStars(
                initialRating: 0,
                minRating: 0.0,
                maxRating: 5.0,
                filledColor: Colors.amber,
                emptyColor: Colors.grey.shade300,
                filledIcon: Icons.star,
                halfFilledIcon: Icons.star_half,
                emptyIcon: Icons.star_border,
                onChanged: (double rating) {
                  // Handle the rating change here
                  print('Rating: $rating');
                },
                displayRatingValue: true,
                interactiveTooltips: true,
                customFilledIcon: Icons.star,
                customHalfFilledIcon: Icons.star_half,
                customEmptyIcon: Icons.star_border,
                starSize: 40.0,
                animationDuration: const Duration(milliseconds: 300),
                animationCurve: Curves.easeInOut,
                readOnly: false,
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Tell us what we need to do better.",
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),),
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.25,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: const BorderSide(
                          color: Colors.white, width: 0.5),
                    ),
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
