import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:meditation_app/constants.dart';
// import 'package:meditation_app/widgets/bottom_nav_bar.dart';
// import 'package:meditation_app/widgets/search_bar.dart';

//import '../bottom_nav_bar.dart';
//import '../constants.dart';
import 'bottom_nav_bar.dart';
import 'constants.dart';
import 'discription.dart';

class HomeExercise extends StatelessWidget {
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
                color: kBlueLightColor,
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
                        "Home Exercises",
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
                          "Exercise is any bodily activity that enhances or maintains physical fitness and overall health and wellness. ... Many individuals choose to exercise outdoors where they can congregate in groups, socialize, and enhance well-being.",
                        ),
                      ),
                      SizedBox(height: 50,),
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
                            name: "Bridge",
                            image: "assets/Home/Bridge.jpg",
                            //isDone: true,
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Bridge",
                              image: "assets/Home/Bridge.jpg",
                              disc: "The bridge exercise is a back bend, a core strengthener, and a balance pose all in one. The regular bridge exercise requires you to move your hips up toward the ceiling, while the yoga bridge pose requires you to extend your rib cage closer to your front body.",
                              youtube: "https://www.youtube.com/watch?v=NnbvPeAIhmA",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            name: "Chair\nSquat",
                            image: "assets/Home/Chair Squat.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Chair Squat",
                              image: "assets/Home/Chair Squat.png",
                              disc: "The deadlift is a weight training exercise in which a loaded barbell or bar is lifted off the ground to the level of the hips, torso perpendicular to the floor, before being placed back on the ground. It is one of the three powerlifting exercises, along with the squat and bench press.",
                              youtube: "https://www.youtube.com/watch?v=LalYAEZNoQw",

                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            name: "Knee\nPushup",
                            image: "assets/Home/Knee Pushup.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Knee Pushup",
                                image: "assets/Home/Knee Pushup.jpg",
                                disc: "Start at the top of the push up position with your hands on the floor, arms straight and underneath your shoulders. Step your knees back behind you so that there is a straight line through your body from your knees up to your head. Engage your glutes, tense your legs and brace your core to keep your body rigid.",
                                youtube: "https://www.youtube.com/watch?v=EgIMk-PZwo0",
                              );

                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            name: "Stationary\nLunge",
                            image: "assets/Home/Stationary Lunge.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Stationary Lunge",
                              image: "assets/Home/Stationary Lunge.jpg",
                              disc: "Bring the other foot forward. And again watch as she goes up and downs the knee stays behind the toes.",
                              youtube: "https://www.youtube.com/watch?v=w2Qbxb6nJKc",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            name: "Plank To\nDownward\nDog",
                            image: "assets/Home/Plank To Downward Dog.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Plank To Downward Dog",
                              image: "assets/Home/Plank To Downward Dog.jpg",
                              disc: "Start in a high plank.Push through your palms and lift your hips into a Down Dog.Return to high plank. Do 10 reps.",
                              youtube: "https://www.youtube.com/watch?v=J8QhVr5Pvig",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Donkey\nKick",
                            image: "assets/Home/Donkey Kick.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Donkey Kick",
                              image: "assets/Home/Donkey Kick.jpg",
                              disc: "The knee in this position dorsiflex the ankle exhale. And extend the hip to lift that leg until your quad forms a symmetrical extension of your torso.",
                              youtube: "https://www.youtube.com/watch?v=SJ1Xuz9D-ZQ",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Bird Dog",
                            image: "assets/Home/Bird Dog.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Bird Dog",
                              image: "assets/Home/Bird Dog.jpg",
                              disc: "The bird dog is a simple core exercise that improves stability, encourages a neutral spine, and relieves low back pain. It strengthens your core, hips, and back muscles. It also promotes proper posture and increases range of motion.",
                              youtube: "https://www.youtube.com/watch?v=dDMvch2Z9yY",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Forearm\nPlank",
                            image: "assets/Home/Forearm Plank.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Forearm Plank",
                              image: "assets/Home/Forearm Plank.jpg",
                              disc: "The forearm plank is a static core exercise similar to holding the top of a push-up, with both the elbows and hands making contact with the floor. The pose engages multiple muscle groups at once, simultaneously building core, back, leg and arm strength.",
                              youtube: "https://www.youtube.com/watch?v=7xu5CsUH4os",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Side Hip\nAbduction",
                            image: "assets/Home/Side Hip Abduction.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Side Hip Abduction",
                              image: "assets/Home/Side Hip Abduction.png",
                              disc: "Keep your feet together and lift your top leg up so that your knees are separated. Keep your hips steady. Slowly lower your leg back down. Repeat 10 times, or as instructed.",
                              youtube: "https://www.youtube.com/watch?v=i2r_o6JRdyU",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Bicycle\nCrunch",
                            image: "assets/Home/Bicycle Crunch.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Bicycle Crunch",
                              image: "assets/Home/Bicycle Crunch.jpg",
                              disc: "This is an easier version of the exercise that mimics the movement of the bicycle crunch, but from a standing position. Bend at the waist and bring your turning arm down to meet the knee of the opposite leg, which you raise so they meet around your midriff.",
                              youtube: "https://www.youtube.com/watch?v=9FGilxCbdz8",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Squat",
                            image: "assets/Home/Squat.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Squat",
                              image: "assets/Home/Squat.png",
                              disc: "A squat is a strength exercise in which the trainee lowers their hips from a standing position and then stands back up. ... Squats are considered a vital exercise for increasing the strength and size of the lower body muscles as well as developing core strength.",
                              youtube: "https://www.youtube.com/watch?v=YaXPRqUwItQ",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Pushup",
                            image: "assets/Home/Pushup.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Pushup",
                              image: "assets/Home/Pushup.png",
                              disc: "The pushup may just be the perfect exercise that builds both upper-body and core strength. Done properly, it is a compound exercise that uses muscles in the chest, shoulders, triceps, back, abs, and even the legs.",
                              youtube: "https://www.youtube.com/watch?v=IODxDxX7oi4",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Walking\nLunge",
                            image: "assets/Home/Walking Lunge.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Walking Lunge",
                              image: "assets/Home/Walking Lunge.png",
                              disc: "Walking lunges are a variation on the static lunge exercise. Instead of standing back upright after performing a lunge on one leg, as you would in a static bodyweight lunge, you “walk” forward by lunging out with the other leg. The movement continues for a set number of reps.",
                              youtube: "https://www.youtube.com/watch?v=7mDWDlzFobQ",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Pike\nPushups",
                            image: "assets/Home/Pike Pushups.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Pike Pushups",
                              image: "assets/Home/Pike Pushups.jpg",
                              disc: "Major it improves upper-body muscular endurance begin in downward facing dog yoga asana spread your fingers wide and grip the mat with the full hand lift your hips high to the sky",
                              youtube: "https://www.youtube.com/watch?v=sposDXWEB0A",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Get Up\nSquat",
                            image: "assets/Home/Get Up Squat.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Get Up Squat",
                              image: "assets/Home/Get Up Squat.png",
                              disc: "Stand up straight with your feet slightly wider than shoulder-width apart. Squat down until your thighs are slightly higher than your knees. Propel yourself upward so your feet lift off the ground. Land with soft, bent knees, and settle back into the squat position.",
                              youtube: "https://www.youtube.com/watch?v=aclHkVaku9U",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Superman",
                            image: "assets/Home/Superman.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Superman",
                              image: "assets/Home/Superman.png",
                              disc: "Keeping your arms and legs straight (but not locked) and torso stationary, simultaneously lift your arms and legs up toward the ceiling to form an elongated  shape with your body — back arches and arms and legs lift several inches off the floor. Hold for two to five seconds and lower back down to complete one",
                              youtube: "https://www.youtube.com/watch?v=cc6UVRS7PW4",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Dead bug",
                            image: "assets/Home/Dead bug.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Dead bug",
                              image: "assets/Home/Dead bug.jpg",
                              disc: "Bring your arms straight above your head perpendicular to the ground along with your knees and hips both at 90-degree angles start by lowering the left arm and extending the right leg.",
                              youtube: "https://www.youtube.com/watch?v=4XLEnwUr1d8",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Overhead\nSquat",
                            image: "assets/Home/Overhead Squat.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Overhead Squat",
                              image: "assets/Home/Overhead Squat.jpg",
                              disc: "Essentially the exercise is a deep squat while holding a barbell overhead with straight arms. The movement is a very challenging core exercise, demonstrating excellent stability and balance whilst developing impressive speed and power skills.",
                              youtube: "https://www.youtube.com/watch?v=pn8mqlG0nkE",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "One\nLegged\nPushup",
                            image: "assets/Home/One Legged Pushup.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "One Legged Pushup",
                              image: "assets/Home/One Legged Pushup.png",
                              disc: "Getting that chest down back up even with the leg in the air requires. A little more concentration. A little more balance proprioception as we discussed. Making it a much more effective",
                              youtube: "https://www.youtube.com/watch?v=cM9Fc-Lfv0A",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Jumping\nlunges",
                            image: "assets/Home/Jumping lunges.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Jumping lunges",
                              image: "assets/Home/Jumping lunges.png",
                              disc: "Jumping lunges are a fantastic lower body exercise that increases the intensity and difficulty of the basic lunge by adding a jump. The addition of a plyometric jump not only challenges the quads, hamstrings, glutes, hip flexors, and calves, but it also recruits your cardiovascular system",
                              youtube: "https://www.youtube.com/watch?v=0M5d-9E-r-M",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Elevated\nPike\nPushups",
                            image: "assets/Home/Elevated Pike Pushups.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Elevated Pike Pushups",
                              image: "assets/Home/Elevated Pike Pushups.jpg",
                              disc: "The pike pushup starts of in the plank pushup plank position and involves walking the feet to as close as humanly possible to the hands. The movement is initiated by leaning forwards and loading the deltoids and triceps.",
                              youtube: "https://www.youtube.com/watch?v=sposDXWEB0A",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Cobra",
                            image: "assets/Home/Cobra.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Cobra",
                              image: "assets/Home/Cobra.jpg",
                              disc: "For Cobra Pose, lie down on your abdomen and point your feet behind you. Bring your hands next to your chest and engage the gluteals and back muscles as you curl the chest up away from the floor, supporting the shape with your arms.",
                              youtube: "https://www.youtube.com/watch?v=gWpUTLghv_0",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Front\nPlank",
                            image: "assets/Home/Front Plank.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Front Plank",
                              image: "assets/Home/Front Plank.jpg",
                              disc: "The plank (also called a front hold, hover, or abdominal bridge) is an isometric core strength exercise that involves maintaining a position similar to a push-up for the maximum possible time.",
                              youtube: "https://www.youtube.com/watch?v=K2UZq6uq_mY",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Forward\nLunge",
                            image: "assets/Home/Forward Lunge.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Forward Lunge",
                              image: "assets/Home/Forward Lunge.jpg",
                              disc: "Stand tall with feet hip-width apart. Engage your core.Take a big step forward with right leg. ...Lower your body until right thigh is parallel to the floor and right shin is vertical. ...Press into right heel to drive back up to starting position.Repeat on the other side.",
                              youtube: "https://www.youtube.com/watch?v=QE_hU8XX48I",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Glute\nBridge",
                            image: "assets/Home/Glute Bridge.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Glute Bridge",
                              image: "assets/Home/Glute Bridge.jpg",
                              disc: "Lie face up on the floor, with your knees bent and feet flat on the ground. Lift your hips off the ground until your knees, hips and shoulders form a straight line. ... Squeeze those glutes hard and keep your abs drawn in so you don't overextend your back during the exercise.",
                              youtube: "https://www.youtube.com/watch?v=wPM8icPu6H8",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Hip\nRotations",
                            image: "assets/Home/Hip Rotations.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Hip Rotations",
                              image: "assets/Home/Hip Rotations.jpg",
                              disc: "Hip internal rotation is the twisting movement of your thigh inward from your hip joint. If you try this while standing, your foot should also turn so that your toes are pointing toward the rest of your body. You use your hip internal rotators to walk, run, squat, crouch, and crawl.",
                              youtube: "https://www.youtube.com/watch?v=CfAulQyMHsQ",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Side\nLunge",
                            image: "assets/Home/Side Lunge.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Side Lunge",
                              image: "assets/Home/Side Lunge.jpg",
                              disc: "Start off by standing straight with your feet shoulder width apart. You can place your hands at your side, across your chest or at your sides. Do not use your hands to push of your thighs.As you begin to inhale, step out to one side. Let's start with the right foot, keeping your left foot planted on the ground. Keeping your body straight.As you step out with one foot, once it is on the floor bend at that knees lowering your body. Your knee and foot should be in a perfectly vertical line.Once your thighs is nearly parallel to the floor, hold for a second or two then extend back up and step back to the starting position.",
                              youtube: "https://www.youtube.com/watch?v=rvqLVxYqEvo",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Single\nLeg\nStand",
                            image: "assets/Home/Single Leg Stand.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                                  name: "Single Leg Stand",
                              image: "assets/Home/Single Leg Stand.png",
                              disc: "Standing on one leg is another common balance exercise: Stand with your feet hip-width apart and your weight equally distributed on both legs. Place your hands on your hips. Lift your left leg off the floor and bend it back at the knee (A). Hold the position as long as you can maintain good form, up to 30 seconds.",
                              youtube: "https://www.youtube.com/watch?v=hH4aQTBIYo0",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Corpse\nPose",
                            image: "assets/Home/Corpse Pose.jpg",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Corpse Pose",
                              image: "assets/Home/Corpse Pose.jpg",
                              disc: "The final pose of any yoga class is one of deep restoration: Corpse Pose, also sometimes called Final Relaxation Pose. Its Sanskrit name, “Savasana” (shah-VAHS-uh-nuh), comes from two words. The first is “Sava” (meaning “corpse”), and the second is “asana” (meaning “pose”). Savasana implies a depth of release that goes beyond simple relaxation. This resting pose takes your yoga practice to a place where you can completely let go.",
                              youtube: "https://www.youtube.com/watch?v=eSeRjoolN2A",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Side\nPlank",
                            image: "assets/Home/Side Plank.png",
                            press: () { Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return Discription(
                              name: "Side Plank",
                              image: "assets/Home/Side Plank.png",
                              disc: "Start on your side with your feet together and one forearm directly below your shoulder. Contract your core and raise your hips until your body is in a straight line from head to feet. Hold the position without letting your hips drop for the allotted time for each set, then repeat on the other side.",
                              youtube: "https://www.youtube.com/watch?v=dFCrqn0RzJA",
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
