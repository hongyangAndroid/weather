///用于构建tab
class TabElement {
  final String title;

  final CityElement cityElement;

  TabElement(this.title, this.cityElement);
}

///用于构建Tab中的城市数据
class CityElement {
  final String name;
  final double latitude;
  final double longitude;
  final String city;
  final String country;

  CityElement(
      this.name, this.latitude, this.longitude, this.city, this.country);
}