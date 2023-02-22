

class AppDropdownInput<T>  {
  final String hintText;
  final List<T> options;
  final T value;
  final String Function(T) getLabel;
  final void Function(T) onChanged;

  AppDropdownInput({
    this.hintText = 'Gender',
    this.options = const [],
    required this.getLabel,
    required this.value,
    required this.onChanged,
  });

}