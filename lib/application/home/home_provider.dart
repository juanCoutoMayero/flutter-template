import 'package:base_project_with_cubit/application/core/core_providers.dart';
import 'package:base_project_with_cubit/application/home/home_provider_state.dart';
import 'package:base_project_with_cubit/infrastructure/repositories/home_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeViewModel extends StateNotifier<HomeProviderState> {
  late HomeRepository _homeRepository;
  late LoadingProvider _loadingProvider;
  late ErrorProvider _errorProvider;

  HomeViewModel({
    required HomeRepository homeRepository,
    required LoadingProvider loadingProvider,
    required ErrorProvider errorProvider,
  }) : super(HomeProviderState.loadHome()) {
    this._homeRepository = homeRepository;
    this._loadingProvider = loadingProvider;
    this._errorProvider = errorProvider;
    init();
  }

  void init() async {
    this._loadingProvider.showLoading();
    final eitherResult = await _homeRepository.getPhotos();

    eitherResult.fold(
      (error) => {
        this._errorProvider.showError(error.message),
        this._loadingProvider.hideLoading(),
      },
      (photos) => {
        this.state = HomeProviderState.loadHome(photos: photos),
        this._loadingProvider.hideLoading(),
      },
    );
  }
}

final homeProvider = StateNotifierProvider<HomeViewModel, HomeProviderState>(
  (ref) => HomeViewModel(
    homeRepository: ref.read(homeRepositoryProvider),
    loadingProvider: ref.read(loadingProvider.notifier),
    errorProvider: ref.read(errorProvider.notifier),
  ),
);
