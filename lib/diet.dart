import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:meditation_app/constants.dart';
// import 'package:meditation_app/widgets/bottom_nav_bar.dart';
// import 'package:meditation_app/widgets/search_bar.dart';

// import '../bottom_nav_bar.dart';
// import '../constants.dart';
import 'bottom_nav_bar.dart';
import 'constants.dart';
import 'discription.dart';

class Diet extends StatelessWidget {
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
                        "Diet Recommendation",
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
                          "In nutrition, diet is the sum of food consumed by a person or other organism. The word diet often implies the use of specific intake of nutrition for health or weight-management reasons (with the two often being related).",
                        ),
                      ),
                      SizedBox(height: 20,),
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
                            name: "Fruits\nand\nberries",
                            image: "assets/diet/fruits-berries-icon-set_1262-4228.jpg",
                            //isDone: true,
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Fruits and berries",
                              image: "assets/diet/fruits-berries-icon-set_1262-4228.jpg",
                              disc: "Berries are some of the healthiest foods you can eat, as they're low in calories but high in fiber, vitamin C, and antioxidants. Many berries have proven benefits for heart health. These include lowering blood pressure and cholesterol, while reducing oxidative stress.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 2,
                            name: "Eggs",
                            image: "assets/diet/egg.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Eggs",
                              image: "assets/diet/egg.png",
                              disc: "The egg diet is a weight loss program that requires you to build at least one meal each day around the traditional breakfast staple. It is a low-calorie, low-carbohydrate, high-protein plan designed to help you lose weight without losing muscle mass.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 3,
                            name: "Lean\nbeef",
                            image: "assets/diet/lean beef.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Lean beef",
                              image: "assets/diet/lean beef.jpg",
                              disc: "Lean Beef. Lean cuts of beef are those with less than 10 grams of total fat and 4.5 grams or less of saturated fat per 3.5-ounce (100-gram) cooked serving (26). If you're buying fresh beef that doesn't have a nutrition label, certain words tell you the meat is lean",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 4,
                            name: "Chicken\nbreasts",
                            image: "assets/diet/chicken.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Chicken breasts",
                              image: "assets/diet/chicken.jpg",
                              disc: "Chicken breasts are a good source of lean protein. For people who eat meat, consuming chicken is a simple way to meet some of your body's protein needs without also consuming a lot of fat. Depending on the cooking method you choose, chicken breasts are also naturally low in sodium",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 5,
                            name: "Lamb",
                            image: "assets/diet/lamb.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Lamb",
                              image: "assets/diet/lamb.png",
                              disc: "Lamb is a type of red meat that comes from young sheep. Not only is it a rich source of high-quality protein, but it is also an outstanding source of many vitamins and minerals, including iron, zinc, and vitamin B12. Because of this, regular consumption of lamb may promote muscle growth, maintenance, and performance.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Almonds",
                            image: "assets/diet/almonds.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Almonds",
                              image: "assets/diet/almonds.jpg",
                              disc: "The unique nutrient combination of almonds — plant-based protein, fiber and monounsaturated fats, plus key nutrients like vitamin E and magnesium — help make them a heart-healthy snack.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Chia seeds",
                            image: "assets/diet/chila seeds.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Chia seeds",
                              image: "assets/diet/chila seeds.jpg",
                              disc:"Aside from their rich source of fiber, chia seeds also provide plenty of other nutritional benefits! Most notably, they are one of the best plant-based sources of omega-3 fatty acids. Omega-3s help reduce inflammation, which is linked to arthritis and heart disease."
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Coconuts",
                            image: "assets/diet/Coconuts.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Coconuts",
                              image: "assets/diet/Coconuts.jpg",
                              disc: "The alleged secret ingredient to this weight loss plan is eating 2 to 3 tablespoons of coconut oil every day. The diet discourages high-carb foods like refined grains, potatoes, sugars, desserts and alcohol while encouraging antioxidant-rich veggies and lean protein.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Macadamia\nnuts",
                            image: "assets/diet/Macadamia nuts.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Macadamia nuts",
                              image: "assets/diet/Macadamia nuts.jpg",
                              disc: "Macadamia nuts are high in healthy fats and may help those trying to lose weight. One serving of macadamia nuts also contains dietary fiber, protein, manganese, thiamin, and a good amount of copper. The fat content of macadamia nuts is higher than that of other popular nuts such as almonds, cashews, and walnuts.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Walnuts",
                            image: "assets/diet/walnuts.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Walnuts",
                              image: "assets/diet/walnuts.jpg",
                              disc: "They originated in the Mediterranean region and Central Asia and have been part of the human diet for thousands of years. These nuts are rich in omega-3 fats and contain higher amounts of antioxidants than most other foods. Eating walnuts may improve brain health and prevent heart disease and cancer ",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Asparagus",
                            image: "assets/diet/Asparagus.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Asparagus",
                              image: "assets/diet/Asparagus.png",
                              disc: "Eating asparagus as part of a fiber-rich diet is an excellent way to help meet your fiber needs and keep your digestive system healthy. Summary As a good source of fiber, asparagus promotes regularity and digestive health and may help reduce your risk of heart disease, high blood pressure and diabetes",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Bell\npeppers",
                            image: "assets/diet/Bell peppers.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Bell peppers",
                              image: "assets/diet/Bell peppers.png",
                              disc: "They are low in calories and exceptionally rich in vitamin C and other antioxidants, making them an excellent addition to a healthy diet. Bell peppers come in various colors, such as red, yellow, orange, and green — which are unripe",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Broccoli",
                            image: "assets/diet/Broccoli.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Broccoli",
                              image: "assets/diet/Broccoli.png",
                              disc: "We would like to show you a five-day broccoli diet that is designed especially for people who want to lose weight the healthy way. This diet plan consists of healthy products such as fresh fruits, greens, vegetables, nuts, fish, meat, brown rice and quinoa.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Carrots",
                            image: "assets/diet/carrots.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Carrots",
                              image: "assets/diet/carrots.png",
                              disc: "The Carrot-only diet is touted to speed up weight loss if you eat meals made solely of carrots for almost a week. Proponents of the Carrot Juice fasting claim that you should fast for 3 to 7 days consuming only carrot juice every 2-3 hours for the best detox.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Cauliflower",
                            image: "assets/diet/Cauliflower.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Cauliflower",
                              image: "assets/diet/Cauliflower.png",
                              disc: "A weight loss diet known as the Cauliflower Diet was also popularised by Radha Thomas in her 2016 book by the same name. Cauliflower Diet is based on the idea that fattening carbohydrate-rich foods like potatoes, wheat and rice can be replaced with cauliflower.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Cucumber",
                            image: "assets/diet/Cucumber.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Cucumber",
                              image: "assets/diet/Cucumber.png",
                              disc: "The diet consists mainly of cucumbers, along with a few protein-rich foods, such as eggs, chicken, fish, and nuts. It recommends replacing most foods with cucumbers, meaning even other fruits and vegetables should be kept to a minimum.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Kale",
                            image: "assets/diet/Kale.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Kale",
                              image: "assets/diet/Kale.png",
                              disc: "Kale Should Be Able to Help You Lose Weight. Kale has several properties that make it a weight loss friendly food. It is very low in calories but still provides significant bulk that should help you feel full. Because of the low calorie and high water content, kale has a low energy density.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Onions",
                            image: "assets/diet/Onions.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Onions",
                              image: "assets/diet/Onions.jpg",
                              disc: "Onion, Allium cepa, is an herbaceous biennial in the family Liliaceae grown for its edible bulb. The stem of the plant is a flattened disc at the base and the tubular leaves form a pseudostem where their sheaths overlap. The leaves are either erect or oblique and there are 3–8 per plant.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Salmon",
                            image: "assets/diet/Salmon.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Salmon",
                              image: "assets/diet/Salmon.jpg",
                              disc: "An anadromous fish, which means that this species of fish was born in freshwater, then migrates to saltwater to mature and then returns to freshwater to spawn. Popular to serve as a main dish, Salmon provides a tender, flaky-textured meat with a mild to rich flavor, depending on the species.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Sardines",
                            image: "assets/diet/Sardines.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Sardines",
                              image: "assets/diet/Sardines.png",
                              disc: "Sardines are a nutrient-rich, small, oily fish widely consumed by humans and as forage fish by larger fish species, seabirds and marine mammals. Sardines are a source of omega-3 fatty acids. Sardines are often served in cans, but can also be eaten grilled, pickled, or smoked when fresh.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Shellfish",
                            image: "assets/diet/Shellfish.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Shellfish",
                              image: "assets/diet/Shellfish.png",
                              disc: "Shellfish, any aquatic invertebrate animal having a shell and belonging to the phylum Mollusca, the class Crustacea (phylum Arthropoda), or the phylum Echinodermata. The term is often used for the edible species of the groups, especially those that are fished or raised commercially.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: " Brown\nrice",
                            image: "assets/diet/Brown rice.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Brown rice",
                              image: "assets/diet/Brown rice.jpg",
                              disc: "Brown rice is a whole grain, meaning that it contains three parts of the grain kernel: the outer, fiber-filled layer called the bran, the nutrient-rich core called the germ, and the starchy middle layer called the endosperm, according to the Harvard T. H. Chan School of Public Health (HSPH).",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Quinoa",
                            image: "assets/diet/Quinoa.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Quinoa",
                              image: "assets/diet/Quinoa.png",
                              disc: "Quinoa, (Chenopodium quinoa), plant species grown for its tiny edible seeds. As a member of the Amaranthaceae family, quinoa is not a true cereal. Its seeds are high in protein and fibre, and its young leaves are also nutritious and can be eaten as a vegetable similar to spinach (to which it is related).",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Ezekiel\nbread",
                            image: "assets/diet/Ezekiel bread.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Ezekiel bread",
                              image: "assets/diet/Ezekiel bread.png",
                              disc: "Sprouted grains give Ezekiel bread far more nutritional value than whole wheat bread. Ezekiel bread has more protein, more fiber, and lower glycemic index for those who want to maintain blood sugar levels throughout the day.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Green\nbeans",
                            image: "assets/diet/Green beans.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Green beans",
                              image: "assets/diet/Green beans.png",
                              disc: "Many studies have suggested that including more plant foods, such as green beans, in the diet decreases the risk of obesity, diabetes, heart disease, and overall mortality. Consumption of fruit and vegetables also promotes a healthy complexion, increased energy, and overall lower weight.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Peanuts",
                            image: "assets/diet/Peanuts.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Peanuts",
                              image: "assets/diet/Peanuts.jpg",
                              disc: "Despite their high fat and calorie content, peanuts could actually help in promoting weight loss. Even though they are relatively high in calories, the rich fibre and protein content in peanuts could help in increasing satiety and can make you feel full for longer.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Yogurt",
                            image: "assets/diet/Yogurt.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Yogurt",
                              image: "assets/diet/Yogurt.jpg",
                             // youtube: "https://www.youtube.com/watch?v=JTfXKMSwVJo",
                              disc: "The yogurt diet has a main goal: eat everyday natural or fruit flavored yogurt, which are easy to digest. Saccharine and herbal infusions like tea and coffee are allowed. Here's a short plan: Breakfast: a cup of coffee or tea with saccharine, a teaspoon of wheat bran and a low-fat natural-flavored yogurt.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Coconut\noil",
                            image: "assets/diet/Coconut oil.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Coconut oil",
                              image: "assets/diet/Coconut oil.jpg",
                              disc: "The alleged secret ingredient to this weight loss plan is eating 2 to 3 tablespoons of coconut oil every day. The diet discourages high-carb foods like refined grains, potatoes, sugars, desserts and alcohol while encouraging antioxidant-rich veggies and lean protein.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Potatoes",
                            image: "assets/diet/Potatoes.png",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Potatoes",
                              image: "assets/diet/Potatoes.png",
                              disc: "On the potato diet, you eat only plain potatoes for three to five days. It's claimed to aid weight loss, restore gut health, and boost immunity. Though it may help you lose weight, it hasn't been studied, is extremely restrictive, lacks certain nutrients, and may lead to unhealthy eating behaviors.",
                            );
                            }),
                            );},
                          ),
                          SeassionCard(
                            seassionNum: 6,
                            name: "Dark\nchocolate",
                            image: "assets/diet/Dark chocolate.jpg",
                            press: () {Navigator.push(context, MaterialPageRoute
                              (builder:(context)
                            {return DietDiscription(
                              name: "Dark chocolate",
                              image: "assets/diet/Dark chocolate.jpg",
                              disc: "You have to eat the weight loss chocolate, meaning a solid, dark chocolate, 70 percent cocoa or higher, while avoiding the weight gain chocolate, which is lower in cocoa and higher in sugar, says Cower.",
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
