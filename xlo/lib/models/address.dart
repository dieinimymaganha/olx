class Address {
  String place;
  String district;
  String city;
  String postalCode;
  String federativeUnit;

  @override
  String toString() {
    return 'Address{place: $place, district: $district, city: $city, postalCode: $postalCode, federativeUnit: $federativeUnit}';
  }

  Address({
    this.place,
    this.district,
    this.city,
    this.postalCode,
    this.federativeUnit,
  });
}
