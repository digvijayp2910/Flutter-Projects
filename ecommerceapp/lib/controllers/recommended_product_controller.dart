import 'package:get/get.dart';

import '../data/repository/recommended_product_repo.dart';
import '../models/products_model.dart';

class RecommendedProductController extends GetxController{
  RecommendedProductController({required this.recommendedProductRepo});
  final RecommendedProductRepo recommendedProductRepo;

  List<dynamic> _recommendedProductList = [] ;
  List<dynamic> get recommendedProductList => _recommendedProductList;
  bool _isLoaded = false;
  bool get isLoaded=> _isLoaded;

  Future<void> getRecommendedProductList() async{
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if(response.statusCode==200){
      print("Got Recommended products");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products as Iterable);
      print(_recommendedProductList);
      _isLoaded=true;
      update();
    }
    else{
      print("Not got Recommended products");
    }
  }
}