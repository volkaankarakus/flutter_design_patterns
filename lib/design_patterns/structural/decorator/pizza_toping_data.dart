class PizzaToppingData {
  final String label;
  PizzaToppingData(this.label);

  bool selected = false;
  void setSelected({required bool isSelected}) => selected = isSelected;
}
