import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:meditation_app/constants.dart';
// import 'package:meditation_app/widgets/bottom_nav_bar.dart';
// import 'package:meditation_app/widgets/search_bar.dart';

import '../bottom_nav_bar.dart';
import '../constants.dart';
import '../discription.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SecondBottomNav(

      ),
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
                        "YOGA",
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
                          "The term yoga comes from a Sanskrit word meaning union.  Yoga combines physical exercises, mental meditation, and breathing techniques to strengthen the muscles and relieve stress.",
                        ),
                      ),
                      SizedBox(height: 80),
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
                            name: "Mountain\nPose",
                            image: "assets/yoga/mountain.png",
                            //isDone: true,
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Mountain Pose",
                                image: "assets/icons/mountain.jpg",
                                disc: "It might look like you're just standing there, but Mountain Pose — Tadasana (tah-DAHS-uh-nuh) — is an active pose that helps improve posture, balance, and calm focus. Its name comes from the Sanskrit words  ",
                                youtube: "https://www.youtube.com/watch?v=2HTvZp5rPrg",

                              );
                              }),
                              );},

                          ),
                          SeassionCard(
                            seassionNum: 2,
                            name: "Chair Pose",
                            image: "assets/yoga/chair.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Chair Pose",
                                image: "assets/yoga/chair.jpg",
                                disc: " Chair Pose is a standing yoga posture that tones the entire body, particularly the thighs. It involves sitting back as if you're about to fall seated into a chair, but holding the position so your muscles stabilize and strengthen.",
                                youtube: "https://www.youtube.com/watch?v=ySafTekJ3Ls",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            name: "Down\nDog on\na chair",
                            image: "assets/yoga/Down Dog on a chair.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Down Dog on a chair",
                                image: "assets/yoga/Down Dog on a chair.jpg",
                                disc: "It increases the rotation of the hips stretches the legs and opens and extends the spine.",
                                youtube: "https://www.youtube.com/watch?v=RgXwX309fDw",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            name: "Downward\nFacing\nDog",
                            image: "assets/yoga/Downward-Facing Dog.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Downward Facing Dog",
                                image: "assets/yoga/Downward-Facing Dog.png",
                                disc: "is a standing pose and mild inversion that builds strength while stretching the whole body. It's named after the way dogs naturally stretch their entire bodies",
                                youtube: "https://www.youtube.com/watch?v=YqOqM79McYY",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            name: "Warrior II",
                            image: "assets/yoga/Warrior II.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Warrior II",
                                image: "assets/yoga/Warrior II.png",
                                disc: " is a standing yoga pose that enhances strength, stability, and concentration. It's named after the Hindu mythological warrior, Virabhadra, an incarnation of the god Shiva.",
                                youtube: "https://www.youtube.com/watch?v=QbIrd6onJwQ",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Triangle\nPose",
                            image: "assets/yoga/ Triangle Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Triangle Pose",
                                image: "assets/yoga/ Triangle Pose.jpg",
                                disc: "is a standing yoga pose that tones the legs, reduces stress, and increases stability.",
                                youtube: "https://www.youtube.com/watch?v=upFYlxZHif0",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Tree Pose",
                            image: "assets/yoga/Tree Pose.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Tree Pose",
                                image: "assets/yoga/Tree Pose.png",
                                disc: "Tree Pose stretches the thighs, groins, torso, and shoulders. It builds strength in the ankles and calves, and tones the abdominal muscles. The pose also helps to remedy flat feet and is therapeutic for sciatica. Like a tree, extend your roots down and blossom your arms up toward the sun.",
                                youtube: "https://www.youtube.com/watch?v=Dic293YNJI8",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Bridge\nPose",
                            image: "assets/yoga/Bridge Pose.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Bridge Pose",
                                image: "assets/yoga/Bridge Pose.png",
                                disc: "is a beginning backbend that helps to open the chest and stretch the thighs",
                                youtube: "https://www.youtube.com/watch?v=6HYNo1YQsUk",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Bound\nAnkle\nPose",
                            image: "assets/yoga/Bound Angle Pose.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Bound Ankle Pose",
                                image: "assets/yoga/Bound Angle Pose.png",
                                disc: "is an excellent preparation for cross-legged sitting poses. This pose strengthens the back and stretches the adductors, inner quadriceps, and hamstrings. Find your connection to the ground by first rounding the spine, so the sit bones point forward.",
                                youtube: "https://www.youtube.com/watch?v=hRcvSEtoecg",

                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Seated\nForward\nFold",
                            image: "assets/yoga/Seated Forward Fold.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Seated Forward Fold",
                                image: "assets/yoga/Seated Forward Fold.png",
                                disc: "Seated Forward Bend (Paschimottanasana) is a classic pose from Hatha yoga. It gives the whole back of your body a good stretch, from your calves to your hamstrings (back of the thighs) to your spine.",
                                youtube: "https://www.youtube.com/watch?v=T8sgVyF4Ux4",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Corpse\nPose",
                            image: "assets/yoga/Corpse Pose.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Corpse Pose",
                                image: "assets/yoga/Corpse Pose.png",
                                disc: "we are so relaxed the ankle tuck the chin into the chest slightly lengthening through the back of the head the back of the neck. Then close your eyes.",
                                youtube: "https://www.youtube.com/watch?v=K0kcQgcJqxI",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Plank\nPose",
                            image: "assets/yoga/Plank Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Plank Pose",
                                image: "assets/yoga/Plank Pose.jpg",
                                disc: "From all fours bring your shoulders over your wrists, fingers spread, middle finger pointing forward. Press your hands into the floor, firm the upper arms in towards each other. Draw the lower belly in and up. Extend one leg back with your toes tucked and then the other leg, so you are in a high push-up position.",
                                youtube: "https://www.youtube.com/watch?v=6qg3r4zZE_k",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Four\nLimbed\nStaff Pose",
                            image: "assets/yoga/Four-Limbed Staff Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Four Limbed Staff Pose",
                                image: "assets/yoga/Four-Limbed Staff Pose.jpg",
                                disc: "look straight down at the floor keeping your neck aligned with your straight spine. pull your abdominal muscles in so your hips don't sag but don't allow them to rise up. Either.",
                                youtube: "https://www.youtube.com/watch?v=Dt_zQnxYrXM",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Upward\nFacing Dog",
                            image: "assets/yoga/Upward-Facing Dog.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Upward Facing Dog",
                                image: "assets/yoga/Upward-Facing Dog.png",
                                disc: "Upward-Facing Dog stretches the chest and spine, while strengthening the wrists, arms, and shoulders. ... Upward Dog creates suppleness in the back torso and abdomen, which stimulates the abdominal organs and improves digestion. It also firms the buttocks and thighs, helping to relieve sciatica",
                                youtube: "https://www.youtube.com/watch?v=cQtfujS-BhY",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Warrior I",
                            image: "assets/yoga/Warrior I.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Warrior I",
                                image: "assets/yoga/Warrior I.jpg",
                                disc: " Warrior I strengthens the legs, opens the hips and chest and stretches the arms and legs. Warrior I develops concentration, balance and groundedness. This pose improves circulation and respiration and energizes the entire body. Contraindications: Recent or chronic injury to the hips, knees, back or shoulders.",
                                youtube: "https://www.youtube.com/watch?v=k4qaVoAbeHM",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Warrior III",
                            image: "assets/yoga/Warrior III.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Warrior III",
                                image: "assets/yoga/Warrior III.png",
                                disc: "Warrior III is an intermediate balancing pose in yoga. This dynamic standing posture creates stability throughout your entire body by integrating all of the muscles throughout your core, arms, and legs.",
                                youtube: "https://www.youtube.com/watch?v=HuETB2HA2FM",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Intense\nside stretch",
                            image: "assets/yoga/ Intense side stretch.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Intense side stretch",
                                image: "assets/yoga/ Intense side stretch.jpg",
                                disc: "Stretches the spine, shoulders and wrists (in the full pose), hips, and hamstrings. Strengthens the legs. Stimulates the abdominal organs. Improves posture and sense of balance. Improves digestion.",
                                youtube: "https://www.youtube.com/watch?v=lVewOU__Eg4",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Dolphin\nPose",
                            image: "assets/yoga/Dolphin Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Dolphin Pose",
                                image: "assets/yoga/Dolphin Pose.jpg",
                                disc: "Dolphin Pose strengthens and stretches the shoulders, arms, upper back, and legs. It helps bring flexibility to the spine, hamstrings, calves, and arches. In addition, it provides all of the benefits of Downward-Facing Dog, including: Relief from headaches, insomnia, fatigue, and mild depression.",
                                youtube: "https://www.youtube.com/watch?v=fbxtdLxYQfM",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Bow Pose",
                            image: "assets/yoga/Bow Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Bow Pose",
                                image: "assets/yoga/Bow Pose.jpg",
                                disc: "Lie on your belly with your hands alongside your torso, palms up Inhale and strongly lift your heels away from your buttocks and, at the same time, lift your thighs away from the floor With the belly pressed against the floor, breathing will be difficult. Stay in this pose anywhere from 20 to 30 seconds.",
                                youtube: "https://www.youtube.com/watch?v=4P2mYcOGxbU",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Camel Pose",
                            image: "assets/yoga/Camel Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Camel Pose",
                                image: "assets/yoga/Camel Pose.jpg",
                                disc: "It is performed on the knees and is often used as preparation for deeper backbends. This pose is a popular component of Vinyasa and Power Yoga classes, and it is also one of the 26 poses practiced in Bikram Yoga",
                                youtube: "https://www.youtube.com/watch?v=dhGeqzMzyhY",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Side plank",
                            image: "assets/yoga/Side plank.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Side plank",
                                image: "assets/yoga/Side plank.jpg",
                                disc: "A powerful arm balance, Side Plank Pose — Vasisthasana (VAH-shees-THAH-suh-nuh) — challenges your ability to stay calm and focused. Its name comes from the Sanskrit word “Vasistha,” which literally means, “most excellent” or “best.” The word implies the spiritual contentment that those on the yogic path can attain.",
                                youtube: "https://www.youtube.com/watch?v=K2VljzCC16g",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Revolved\nTriangle\nPose",
                            image: "assets/yoga/ Revolved Triangle Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Revolved Triangle Pose",
                                image: "assets/yoga/ Revolved Triangle Pose.jpg",
                                disc: "Square your hips to the front of your sticky mat, towards your right leg. Draw your right hip back and left hip forward. ... Draw the shoulder blades down your back and radiate out from the heart center through your arms and fingertips.",
                                youtube: "https://www.youtube.com/watch?v=iKWF7InnzOg",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Boat Pose",
                            image: "assets/yoga/Boat Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Boat Pose",
                                image: "assets/yoga/Boat Pose.jpg",
                                disc: "One of the most well-known yoga poses for core strength, Boat Pose — Navasana (nah-VAHS-uh-nuh) — tones the abdominal muscles while strengthening the low back. The name comes from the Sanskrit words nava meaning boat and asana meaning pose.",
                                youtube: "https://www.youtube.com/watch?v=iKWF7InnzOg",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Crow Pose",
                            image: "assets/yoga/Crow Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Crow Pose",
                                image: "assets/yoga/Crow Pose.jpg",
                                disc: "Bakasana, and the similar Kakasana are balancing asanas in hatha yoga and modern yoga as exercise. In all variations, these are arm balancing poses in which hands are planted on the floor, shins rest upon upper arms, and feet lift up.",
                                youtube: "https://www.youtube.com/watch?v=4F4lTh09Z5E",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Wheel Pose",
                            image: "assets/yoga/Wheel Pose.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Wheel Pose",
                                image: "assets/yoga/Wheel Pose.jpg",
                                disc: "Wheel Pose (Urdhva Dhanurasana) is a backbend that is characterized as a beginner's backbend, but it still requires building up strength and flexibility to achieve it. ... Backbends are usually done near the end of a yoga practice. After performing Wheel Pose, it is common to do a mild twist or forward bend.",
                                youtube: "https://www.youtube.com/watch?v=4F4lTh09Z5E",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Wall\nassisted\nhandstand",
                            image: "assets/yoga/Wall-assisted handstand.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Wall assisted handstand",
                                image: "assets/yoga/Wall-assisted handstand.jpg",
                                disc: "Sweep your right leg through a wide arc toward the wall and kick your left foot off the floor, immediately pushing through the heel to straighten the left knee. As both legs come off the ground, engage your deep core abdominal muscles to help lift your hips over your shoulders",
                                youtube: "https://www.youtube.com/watch?v=FQpWDSfBrMs",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Wall\nassisted\nforearm\nstand",
                            image: "assets/yoga/Wall-assisted forearm stand.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Wall assisted forearm stand",
                                image: "assets/yoga/Wall-assisted forearm stand.jpg",
                                disc: "The Forearm Stand is a balancing inversion. It is an advanced pose itself and is good preparation for even more challenging backbends and arm balances. Getting the feel for kicking up can take some time, especially if you're new to inversions. With practice, you will build your confidence.",
                                youtube: "https://www.youtube.com/watch?v=D03spQ7URgo",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Headstand",
                            image: "assets/yoga/Headstand.jpg",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Headstand",
                                image: "assets/yoga/Headstand.jpg",
                                disc: "Headstand is a Hatha Yoga asana (posture) where the practitioner stands / balances on the head with the support of the arms. It is an inverted position where the head is on the ground and the feet are up. Even though Headstand is a challenging pose it is very popular due to its numerous benefits.",
                                youtube: "https://www.youtube.com/watch?v=V1HbXt5ZRlg",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Corpse\nPose",
                            image: "assets/yoga/Corpse Pose.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Corpse Pose",
                                image: "assets/yoga/Corpse Pose.png",
                                disc: "And we are so relaxed the ankle tuck the chin into the chest slightly lengthening through the back of the head the back of the neck. Then close your eyes.",
                                youtube: "https://www.youtube.com/watch?v=eSeRjoolN2A&t=209s",
                              );
                              }),
                              );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Shoulder\nstand",
                            image: "assets/yoga/Shoulder stand.png",
                            press: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder:(context)
                              {return Discription(
                                name: "Shoulder stand",
                                image: "assets/yoga/Shoulder stand.png",
                                disc: "Shoulder stand is a powerhouse of a pose. It's full of benefits and tends to be more accessible than other inversions. In addition to stimulating the thyroid gland, this pose also relieves stress and depression, improves digestion, opens the shoulders and neck, and strengthens your legs, butt, arms, and abs.",
                                youtube: "https://www.youtube.com/watch?v=SOHsI7XI0mg",
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
                     // ¿,
                      // child: Icon(
                      //   Icons.play_arrow,
                      //   color: isDone ? Colors.white : kBlueColor,
                      // ),
                      // child: Image(
                      //   image: AssetImage(image),
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
