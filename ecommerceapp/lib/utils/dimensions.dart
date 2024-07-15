import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight/2.44;
  static double pageViewContainer = screenHeight/3.55;
  static double pageViewTextContainer = screenHeight/6.52;

  // padding & margin for height
  static double  height10 = screenHeight/(screenHeight*0.1);
  static double  height100 = screenHeight/(screenHeight*0.01);
  static double  height20 = screenHeight/(screenHeight/20);
  static double  height30 = screenHeight/(screenHeight/30);
  static double  height15 = screenHeight/(screenHeight/15);
  static double  height45 = screenHeight/(screenHeight/45);
  static double  height2 = screenHeight/(screenHeight/2);



  // padding & margin for width
  static double  width10 = screenWidth/(screenWidth*0.1);
  static double  width20 = screenWidth/(screenWidth/20);
  static double  width30 = screenWidth/(screenWidth/30);
  static double  width15 = screenWidth/(screenWidth/15);
  static double  width35 = screenWidth/(screenWidth/35);
  static double  width45 = screenWidth/(screenWidth/45);



  // font size
  static double font20 = screenHeight/(screenHeight/20);
  static double font16 = screenHeight/(screenHeight/16);
  static double font26 = screenHeight/(screenHeight/26);
  static double font12 = screenHeight/(screenHeight/12);

  // size for radius
  static double  radius5 = screenWidth/(screenWidth/5);
  static double  radius10 = screenWidth/(screenWidth*0.1);
  static double  radius15 = screenWidth/(screenWidth/15);
  static double  radius20 = screenWidth/(screenWidth/20);
  static double  radius30 = screenWidth/(screenWidth/30);

  //size for anything
  static double  size9 = screenWidth/(screenWidth/9);
  static double  size18 = screenWidth/(screenWidth/18);
  static double  size15 = screenWidth/(screenWidth/15);
  static double  size30 = screenWidth/(screenWidth/30);


//
static double listViewImgSize = (screenWidth/3.27);
static double listTextViewImgSize = (screenWidth/3.92);


static double popularFoodImgSize = screenHeight/2.23;

static double iconSize16 = screenHeight/48.95;
static double iconSize26 = screenHeight/30.12;
static double iconSize24 = screenHeight/32.63;
static double iconSize40 = screenHeight/19.58;
static double iconSize30 = screenHeight/26.109;


//bottom height

static double  bottomNavigationHeight120 = screenHeight/(screenHeight/120);


}