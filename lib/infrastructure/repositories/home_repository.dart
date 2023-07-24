import 'package:base_project_with_cubit/domain/models/photo.dart';
import 'package:base_project_with_cubit/infrastructure/core/networking_exception.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/client.dart';

const _GET_ALBUMS = "photos";

class HomeRepository {
  Client _client;

  HomeRepository({required Client client}) : _client = client;

  Future<Either<NetworkException, List<Photo>>> getPhotos() async {
    try {
      final result = await _client.dio.get<List<dynamic>>(_GET_ALBUMS);
      return right(
        result.data?.map((e) => Photo.fromJson(e)).toList() ?? [],
      );
    } on DioError catch (exception) {
      return left(
        NetworkException(
          exception.error,
        ),
      );
    }
  }
}

final homeRepositoryProvider = Provider(
  (ref) => HomeRepository(
    client: ref.read(apiClientProvider),
  ),
);
