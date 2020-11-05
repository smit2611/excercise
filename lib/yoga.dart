import 'package:exercise_app/discription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:meditation_app/constants.dart';
// import 'package:meditation_app/widgets/bottom_nav_bar.dart';
// import 'package:meditation_app/widgets/search_bar.dart';

//import '../bottom_nav_bar.dart';
//import '../constants.dart';
import 'bottom_nav_bar.dart';
import 'constants.dart';

class YogaEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SecondBottomNav(),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.green[100],
                    Colors.yellow[50],
                    Colors.pink[100],
                  ],
                ),
               // color: kBlueLightColor,
                image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Text(
                        "GYM Workout",
                        style: Theme.of(context)
                            .textTheme
                            .display1
                            .copyWith(fontWeight: FontWeight.w900),
                      ),
                      // SizedBox(height: 10),
                      // Text(
                      //   "3-10 MIN Course",
                      //   style: TextStyle(fontWeight: FontWeight.bold),
                      // ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: size.width * .6, // it just take 60% of total width
                        child: Text(
                          "Exercise consists of cardiovascular conditioning, strength and resistance training, and flexibility to improve and maintain the fitness of the body's heart, lungs, and muscles.",
                        ),
                      ),
                      SizedBox(height: 80,),
                      // SizedBox(
                      //   width: size.width * .5, // it just take the 50% width
                      //   child: SearchBar(),
                      // ),
                      Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: <Widget>[
                          SeassionCard(
                            seassionNum: 1,
                            name: "Deadlift",
                            image: "assets/gym/deadlift.jpg",
                            //isDone: true,
                            press: (){
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Deadlift",
                                image: "assets/gym/deadlift.jpg",
                                disc: "The deadlift is a weight training exercise in which a loaded barbell or bar is lifted off the ground to the level of the hips, torso perpendicular to the floor, before being placed back on the ground. It is one of the three powerlifting exercises, along with the squat and bench press.",
                                youtube: "https://www.youtube.com/watch?v=op9kVnSso6Q",

                              );
                              }),
                              );},

                          ),
                          SeassionCard(
                            seassionNum: 2,
                            name: "T-Bar\nRow",
                            image: "assets/gym/T-Bar Row.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "T-Bar Row",
                                image: "assets/gym/T-Bar Row.jpg",
                                disc: "Load one side of a barbell with weight and secure the other end in a corner of the gym. Straddle the bar and grip it at the weighted end. Pull the bar towards your chest, keeping your elbows tight to your body and squeezing your shoulder blades together at the top. Lower to the starting position and repeat.",
                                youtube: "https://www.youtube.com/watch?v=OrrKhAcb62o",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            name: "The Bird\nDog",
                            image: "assets/gym/The Bird Dog.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "The Bird Dog",
                              image: "assets/gym/The Bird Dog.jpg",
                              disc: "The bird dog is a simple core exercise that improves stability, encourages a neutral spine, and relieves low back pain. It strengthens your core, hips, and back muscles. It also promotes proper posture and increases range of motion.",
                              youtube: "https://www.youtube.com/watch?v=wiFNA3sqjCA",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            name: "Downward\nFacing\nDog",
                            image: "assets/gym/Downward Facing Dog.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Downward Facing Dog",
                              image: "assets/gym/Downward Facing Dog.jpg",
                              disc: "Downward Facing Dog often referred to as Downward Dog or simply Down Dog, creates length throughout the entire body, particularly in the back body, including the heels, calves, hamstrings, glutes, hips, and lower back. It also as develops strength in the wrists, shoulders and the back muscles.",
                              youtube: "https://www.youtube.com/watch?v=YqOqM79McYY",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            name: "Lat\nPulldown",
                            image: "assets/gym/Lat Pulldown.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Lat Pulldown",
                              image: "assets/gym/Lat Pulldown.jpg",
                              disc: "Instructions. Sit at a lat pulldown station and grab the bar with an overhand grip that's just beyond shoulder width. Your arms should be completely straight and your torso upright. Pull your shoulder blades down and back, and bring the bar to your chest. Pause, then slowly return to the starting position.",
                              youtube: "https://www.youtube.com/watch?v=MDg0xyAJnIc",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Pullups",
                            image: "assets/gym/Pullups.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Pullups",
                              image: "assets/gym/Pullups.jpg",
                              disc: "A pull-up is an upper-body strength exercise. The pull-up is a closed-chain movement where the body is suspended by the hands and pulls up. As this happens, the elbows flex and the shoulders adduct and extend to bring the elbows to the torso.",
                              youtube: "https://www.youtube.com/watch?v=eGo4IYlbE5g",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "walk &\nBar Carry",
                            image: "assets/gym/walk & Bar Carry.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "walk & Bar Carry",
                              image: "assets/gym/walk & Bar Carry.jpg",
                              disc: "You simply hold one dumbbell or kettlebell in each hand and walk while engaging your core. When done correctly, the farmer's carry challenges all of the major muscles in your body, increases your heart rate, builds strength in your core, and serves as a functional exercise for sports-specific training.",
                              youtube: "https://www.youtube.com/watch?v=53PeTGnpwT8",

                            );

                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Incline",
                            image: "assets/gym/Incline.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Incline",
                              image: "assets/gym/Incline.png",
                              disc: "to deviate or cause to deviate from a particular plane, esp a vertical or horizontal plane; slope or slant. (when tr, may take an infinitive) to be disposed or cause to be disposed (towards some attitude or to do something)he inclines towards levity; that does not incline me to think that you are right.",
                              youtube: "https://www.youtube.com/watch?v=SrqOu55lrYU",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Standing\nBarbell\nCurl",
                            image: "assets/gym/Standing Barbell Curl.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Standing Barbell Curl",
                              image: "assets/gym/Standing Barbell Curl.jpg",
                              disc: "Standing barbell curls are a great mass building exercise targeting the biceps to get started while standing grip a barbell shoulder-width with an underhand grip",
                              youtube: "https://www.youtube.com/watch?v=kwG2ipFRgfo",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Dips",
                            image: "assets/gym/Dips.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Dips",
                              image: "assets/gym/Dips.png",
                              disc: "A dip is an upper-body strength exercise. Narrow, shoulder-width dips primarily train the triceps, with major synergists being the anterior deltoid, the pectoralis muscles (sternal, clavicular, and minor), and the rhomboid muscles of the back (in that order).",
                              youtube: "https://www.youtube.com/watch?v=2z8JmcrW-As",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Diamond\nPushups",
                            image: "assets/gym/Diamond Pushups.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Diamond Pushups",
                              image: "assets/gym/Diamond Pushups.png",
                              disc: "The diamond pushup invites you to turn your the pits of your elbows toward each other, a more comfortable position when your hands are so narrow, but doing that also removes tension from your lats and places your shoulders in internal rotation, a position that invites injury for your shoulder joint,",
                              youtube: "https://www.youtube.com/watch?v=J0DnG1_S92I",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Shrugs",
                            image: "assets/gym/Shrugs.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Shrugs",
                              image: "assets/gym/Shrugs.png",
                              disc: "The lifter stands erect, hands about shoulder width apart, and raises the shoulders as high as possible, and then lowers them, while not bending the elbows, or moving the body at all. The lifter may not have as large a range of motion as in a normal shrug done for active flexibility.",
                              youtube: "https://www.youtube.com/watch?v=cJRVVxmytaM",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Dumbbell\nLateral\nRaises",
                            image: "assets/gym/Dumbbell Lateral Raises.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Dumbbell Lateral Raises",
                              image: "assets/gym/Dumbbell Lateral Raises.png",
                              disc: "And you breathe out as you observe force that means you're really up so. And you get rid of them goes up just pop your neck or where your chin is. And then bring it back down breathe on the way.",
                              youtube: "https://www.youtube.com/watch?v=3VcKaXpzqRo",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Presses",
                            image: "assets/gym/Presses.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Presses",
                              image: "assets/gym/Presses.jpg",
                              disc: "The bench press is an upper-body weight training exercise in which the trainee presses a weight upwards while lying on a weight training bench. The exercise uses the pectoralis major, the anterior deltoids, and the triceps, among other stabilizing muscles.",
                              youtube: "https://www.youtube.com/watch?v=qEwKCR5JCog",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Rear Delt\nRaises",
                            image: "assets/gym/Rear Delt Raises.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Rear Delt Raises",
                              image: "assets/gym/Rear Delt Raises.jpg",
                              disc: "The rear delt raise, also known as the rear deltoid raise, or rear shoulder raise is an exercise in weight training. This exercise is an isolation exercise that heavily works the posterior deltoid muscle. The movement is primarily limited to the two shoulder joints: the glenohumeral joint and the scapulothoracic joint.",
                              youtube: "https://www.youtube.com/watch?v=p1yQnTNE808",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Half-Knee\nLandmine",
                            image: "assets/gym/Half-Knee Landmine.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Half-Knee Landmine",
                              image: "assets/gym/Half-Knee Landmine.jpg",
                              disc: "The half kneeling landmine press is a regression from the standing overhead press and can be used to help build the prerequisite shoulder strength and stability to perform the standing variation.",
                              youtube: "https://www.youtube.com/watch?v=PY9HorHANhc",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Intense\nside stretch",
                            image: "assets/gym/Intense side stretch.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Intense side stretch",
                              image: "assets/gym/Intense side stretch.jpg",
                              disc: "Intense Side Stretch Pose creates a deep stretch along the hamstrings, and helps to open up the hips, spine, shoulders, and wrists. The effects of this pose can be particularly beneficial for runners to stretch out tight calves and hamstrings before or after a big race.",
                              youtube: "https://www.youtube.com/watch?v=_m19RdGhsEc",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Barbell\nBench\nPress",
                            image: "assets/gym/Barbell Bench Press.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Barbell Bench Press",
                              image: "assets/gym/Barbell Bench Press.png",
                              disc: "The bench press is an upper-body weight training exercise in which the trainee presses a weight upwards while lying on a weight training bench. ... A barbell is generally used to hold the weight, but a pair of dumbbells can also be used.",
                              youtube: "https://www.youtube.com/watch?v=ysUTNll8JQ8",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Cable\nCrossover",
                            image: "assets/gym/Cable Crossover.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Cable Crossover",
                              image: "assets/gym/Cable Crossover.png",
                              disc: "The cable cross-over is an isolation movement that uses a cable stack to build bigger and stronger pectoral muscles. Since it's done using adjustable pulleys, you can target different parts of your chest by setting the pulleys at different levels.",
                              youtube: "https://www.youtube.com/watch?v=taI4XduLpTk",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Dumbbell\nBench\nPress",
                            image: "assets/gym/Dumbbell Bench Press.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Dumbbell Bench Press",
                              image: "assets/gym/Dumbbell Bench Press.png",
                              disc: "The dumbbell bench press is a variation of the barbell bench press and an exercise used to build the muscles of the chest. Often times, the dumbbell bench press is recommended after reaching a certain point of strength on the barbell bench press to avoid pec and shoulder injuries.",
                              youtube: "https://www.youtube.com/watch?v=Y_7aHqXeCfQ",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "TRX\nPushups",
                            image: "assets/gym/TRX Pushups.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "TRX Pushups",
                              image: "assets/gym/TRX Pushups.jpg",
                              disc: "Trx suspension straps atomic push-ups / pushups is a gym work out exercise that targets abs and chest and shoulders and also involves glutes & hip flexors. Refer to the illustration and instructions above for how to perform this exercise correctly.",
                              youtube: "https://www.youtube.com/watch?v=DNuZWO0if5o",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Incline\nFlye",
                            image: "assets/gym/Incline Flye.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Incline Flye",
                              image: "assets/gym/Incline Flye.jpg",
                              disc: "Incline dumbbell flye, the dumbbell flye uses a flat bench. Lie with your head and shoulders supported by the bench and your feet flat on the floor. Hold the dumbbells directly above your chest, palms facing each other, then lower the weights in an arc out to the sides as far as is comfortable.",
                              youtube: "https://www.youtube.com/watch?v=bDaIL_zKbGs",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Squat",
                            image: "assets/gym/Squat.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Squat",
                              image: "assets/gym/Squat.jpg",
                              disc: "A squat is a strength exercise in which the trainee lowers their hips from a standing position and then stands back up. ... The primary agonist muscles used during the squat are the quadriceps femoris, the adductor magnus, and the gluteus maximus.",
                              youtube: "https://www.youtube.com/watch?v=aclHkVaku9U&t=14s",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Leg Curl",
                            image: "assets/gym/Leg Curl.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Leg Curl",
                              image: "assets/gym/Leg Curl.jpg",
                              disc: "The leg curl, also known as the hamstring curl, is an isolation exercise that targets the hamstring muscles. The exercise involves flexing the lower leg against resistance towards the buttocks. Other exercises that can be used to strengthen the hamstrings are the glute-ham raise and the deadlift.",
                              youtube: "https://www.youtube.com/watch?v=ELOCsoDSmrg",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Leg\nExtension",
                            image: "assets/gym/Leg Extension.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Leg Extension",
                              image: "assets/gym/Leg Extension.png",
                              disc: "The leg extension is a resistance weight training exercise that targets the quadriceps muscle in the legs. The exercise is done using a machine called the Leg Extension Machine. ... The exercise consists of bending the leg at the knee and extending the legs, then lowering them back to the original position.",
                              youtube: "https://www.youtube.com/watch?v=YyvSfVjQeL0",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Bulgarian\nSplit\nSquat",
                            image: "assets/gym/Bulgarian Split Squat.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Bulgarian Split Squat",
                              image: "assets/gym/Bulgarian Split Squat.png",
                              disc: "A type of single-leg squat, the Bulgarian split squat is sure to deliver big benefits to your lower body. With one leg behind you and elevated off of the ground, this exercise targets many of the same muscles as a traditional squat, but with an emphasis on the quads.",
                              youtube: "https://www.youtube.com/watch?v=2C-uNgKwPLE",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Calf Raise",
                            image: "assets/gym/Calf Raise.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Calf Raise",
                              image: "assets/gym/Calf Raise.jpg",
                              disc: "Standing calf raises are executed with one or both feet. They are frequently done on a raised surface with the heel lower than the toes to allow a greater stretch on the working muscles. The exercise is performed by raising the heel as far as possible.",
                              youtube: "https://www.youtube.com/watch?v=-M4-G8p8fmc",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Planks",
                            image: "assets/gym/Planks.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Planks",
                              image: "assets/gym/Planks.png",
                              disc: "The plank is a bodyweight exercise which involves holding the trunk part of your body in a straight line off the ground. ... Regularly adding planks to your fitness regime will go some way to conditioning your core, improving your posture and stability.",
                              youtube: "https://www.youtube.com/watch?v=ASdvN_XEl_c",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Ab\nRollout",
                            image: "assets/gym/Ab Rollout.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Ab Rollout",
                              image: "assets/gym/Ab Rollout.jpg",
                              disc: "The ab rollout is an exercise designed to target the core muscles including the rectus abdominis, obliques, and erector spinae (lower back). It also targets the latissimus dorsi (upper back) and shoulder muscles.",
                              youtube: "https://www.youtube.com/watch?v=rqiTPdK1c_I",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Cable\nWoodchop",
                            image: "assets/gym/Cable Woodchop.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Cable Woodchop",
                              image: "assets/gym/Cable Woodchop.jpg",
                              disc: "The cable woodchop uses a cable rack and a single cable to simulate a woodchopping action. It builds strength and power in the core and obliques. This imitates activity that occurs in many sports—swinging a bat or throwing while twisting the torso. ... It can be part of a core strengthening workout or a total body workout.",
                              youtube: "https://www.youtube.com/watch?v=pAplQXk3dkU",
                            );
                            }),
                            );},
                          ),

                        ],
                      ),
                      // SizedBox(height: 20),
                      // Text(
                      //   "Meditation",
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .title
                      //       .copyWith(fontWeight: FontWeight.bold),
                      // ),
                      // Container(
                      //   margin: EdgeInsets.symmetric(vertical: 20),
                      //   padding: EdgeInsets.all(10),
                      //   height: 90,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(13),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         offset: Offset(0, 17),
                      //         blurRadius: 23,
                      //         spreadRadius: -13,
                      //         color: kShadowColor,
                      //       ),
                      //     ],
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       SvgPicture.asset(
                      //         "assets/icons/Meditation_women_small.svg",
                      //       ),
                      //       SizedBox(width: 20),
                      //       Expanded(
                      //         child: Column(
                      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: <Widget>[
                      //             Text(
                      //               "Basic 2",
                      //               style: Theme.of(context).textTheme.subtitle,
                      //             ),
                      //             Text("Start your deepen you practice")
                      //           ],
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.all(10),
                      //         child: SvgPicture.asset("assets/icons/Lock.svg"),
                      //       ),
                      //     ],
                      //   ),
                      // )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int seassionNum;
  final String name;
  final bool isDone;
  final Function press;
  final String image;
  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press, this.name, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 43,
                      // decoration: BoxDecoration(
                      //   color: isDone ? kBlueColor : Colors.white,
                      //   shape: BoxShape.circle,
                      //   border: Border.all(color: kBlueColor),
                      // ),
                      // child: Icon(
                      //   Icons.play_arrow,
                      //   color: isDone ? Colors.white : kBlueColor,
                      // ),
                      child: CircleAvatar(
                        radius: 60.0,
                        backgroundImage: AssetImage(image),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                    SizedBox(width: 10),
                    // Image(
                    //   image: AssetImage("assets/icons/gym.svg"),
                    // ),
                    Text(
                      name,
                      // style: Theme.of(context).textTheme.subtitle,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold

                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
