enum EnumSex {
  male(true),
  female(false),
  unknown(null);

  final bool? value;

  const EnumSex(this.value);

  bool get isMale => this == EnumSex.male;
  bool get isFamle => this == EnumSex.female;

  static EnumSex? fromMap(dynamic value) {
    if (value is bool) {
      return value == true ? EnumSex.male : EnumSex.female;
    }
    return null;
  }

  bool? toMap() {
    if (this == EnumSex.unknown) return null;
    return this.value;
  }
}

extension NonNullEnumSex on EnumSex? {
  orUnknown() {
    if (this is EnumSex) return this;
    return EnumSex.unknown;
  }
}
