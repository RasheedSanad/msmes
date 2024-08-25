enum EnumSex {
  male(true),
  female(false),
  unknown(null);

  final bool? value;

  const EnumSex(this.value);

  bool get isMale => this == EnumSex.male;
  bool get isFamle => this == EnumSex.female;
}
