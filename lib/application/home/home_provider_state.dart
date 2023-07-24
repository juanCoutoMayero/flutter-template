import 'package:base_project_with_cubit/domain/models/photo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_provider_state.freezed.dart';

@freezed
abstract class HomeProviderState with _$HomeProviderState {
  const factory HomeProviderState.loadHome({@Default([]) List<Photo> photos}) =
      _LoadHome;
}
