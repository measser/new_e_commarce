// import 'package:dartz/dartz.dart';
//
// import '../../../../core/errors/feilure.dart';
// import '../../../../core/units/shared/helper/api_service.dart';
// import 'home_repo.dart';
//
//
// class HomeRepoImpl implements HomeRepo{
//   final ApiService apiService;
//
//   HomeRepoImpl(this.apiService);
//   @override
//   Future<Either<Failure, List<void>>> fetchCategories() async{
//    try{
//      var data= await apiService.get(url: '');
//      List<void> categories = [];
//      return right(categories);
//    }catch(e){
//      return left(ServerFailure(e.toString()));
//    }
//    }
//   }
