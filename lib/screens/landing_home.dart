import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:wewatch_video_app/Colors_app.dart';
import 'package:wewatch_video_app/controllers/landing_home/landing_home_controller.dart';
import 'package:wewatch_video_app/custom_widgets/custom_bottom_navigation.dart';

class LandingHomeView extends GetView<LandingHomeCOntroller>{
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        drawer: new Drawer(),
        appBar: AppBar(
          backgroundColor: COLORS.APP_BAR_COLOR,
          iconTheme: IconThemeData(color: Colors.white),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Card(
                        child: Container(
                          width: 150,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            borderRadius: new BorderRadius.circular(50),
                            border: Border.all(color: Colors.black87, width: 1.0),
                          ),
//                          height: 40.0, // height of the button
//                                      width: 120.0, // width of the button
                          child: Center(
                              child: GestureDetector(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
//                                        Image.asset(
//                                          'assets/images/avatar.png',
//                                          height: 20.0,
//                                          width: 20.0,
//                                          fit: BoxFit.cover,
//                                        ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                                      child: Text(
                                        // ![null, ""].contains(cityName)
                                        //     ? cityName
                                        //     : 'No Location…',
                                        "No location",
                                        maxLines: 1,
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                    )
                                  ],
                                ),
                                onTap: () async{
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => LocationAccess()),
                                  // );
                                  // try {
                                  //   Prediction pr = await PlacesAutocomplete.show(
                                  //       context: context,
                                  //       apiKey: "AIzaSyAfySREHfRw2x8bEFT6b7Nc4z3Te80LiyI",
                                  //       language: "en",
                                  //       components: [dir.Component(dir.Component.country, "in"),
                                  //       ],
                                  //       hint: "Enter your area" ,
                                  //       logo: Container(
                                  //           width: MediaQuery.of(context).size.width,
                                  //           child: Text("Enter your area",style: new TextStyle(fontSize: 16),textAlign: TextAlign.center,)));
                                  //   await _getLatLng(pr);
                                  //   //print("place id=>" + pr.placeId);
                                  // }catch(ex){
                                  //
                                  // }

                                },
                              )),
                        ),
//                                    elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                      ),
                    ),
                  )),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: GestureDetector(
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => SearchScreen()),
                  // );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: GestureDetector(
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                //width: 100,
                child: Image.asset(
                  'assets/images/logo_splash.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
          title: Text(
            "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: controller.currentPage,
        bottomNavigationBar: CustomBottomNavigationBar(
          backgroundColor: context.theme.scaffoldBackgroundColor,
          itemColor: context.theme.accentColor,
          currentIndex: controller.currentIndex.value,
          onChange: (index) {
            controller.changePageInRoot(index);
          },
          children: [
            CustomBottomNavigationItem(
              icon: Icons.home_outlined,
              label: "Home".tr,
              color: Colors.blue,
            ),
            CustomBottomNavigationItem(
              icon: Icons.hourglass_bottom,
              label: "Latest".tr,
              color: Colors.blue,
            ),
            CustomBottomNavigationItem(
              icon: Icons.person_search_rounded,
              label: "Job".tr,
              color: Colors.blue,
            ),
            CustomBottomNavigationItem(
              icon: Icons.person_outline,
              label: "Account".tr,
              color: Colors.blue,
            ),
          ],
        ),

      );
    });
  }

}