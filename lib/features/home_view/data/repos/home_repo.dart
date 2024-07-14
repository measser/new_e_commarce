import 'package:dartz/dartz.dart';

import '../../../../core/errors/feilure.dart';

abstract class HomeRepo
{
 Future<Either< Failure,List<void>>> fetchCategories();
}
