import 'package:dartz/dartz.dart';
import 'package:flutter_demo_app/core/error/failure.dart';
import 'package:flutter_demo_app/features/store/data/datasource/remote_data_source.dart';
import 'package:flutter_demo_app/features/store/domain/entities/address.dart';
import 'package:flutter_demo_app/features/store/domain/entities/categories.dart';
import 'package:flutter_demo_app/features/store/domain/entities/product.dart';
import 'package:flutter_demo_app/features/store/domain/repository/base_home_base_reposotory.dart';

class HomeRepository implements BaseHomePageRepository {
  final BaseHomeRemoteDataSource _remoteDataSource;

  HomeRepository(this._remoteDataSource);
  @override
  Future<Either<Failure, List<Address>>> getAddresses() async {
    final result = await _remoteDataSource.getAddresses();

    try {
      return Right(result);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Product>> getBanner() {
    // TODO: implement getBanner
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Categories>>> getCategories() {
    // TODO: implement getCategories
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Product>>> getDealOfTheDay() {
    // TODO: implement getDealOfTheDay
    throw UnimplementedError();
  }
}
