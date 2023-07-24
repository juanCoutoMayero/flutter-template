extension DynamicExtension on dynamic? {
  void let<T>({
    required Function(T) notNullContinue,
    Function? nullContinue,
  }) {
    if (this != null) {
      notNullContinue.call(this);
    } else {
      nullContinue?.call();
    }
  }

}
