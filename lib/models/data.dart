List<DataItem> getAllData() {
  List<DataItem> list = [];
  list.add(DataItem('https://cdn-icons-png.flaticon.com/128/3372/3372600.png', 'Barcha malumotlar'));
  list.add(DataItem('https://cdn-icons-png.flaticon.com/128/3319/3319221.png', 'Fermerlar'));
  list.add(DataItem('https://cdn-icons-png.flaticon.com/128/3001/3001764.png', 'Klientlar'));
  list.add(DataItem('https://cdn-icons-png.flaticon.com/128/2698/2698011.png', 'Sozlamalar'));


  return list;
}
List<DataItem> getYerlarData() {
  List<DataItem> list = [];
  list.add(DataItem('https://cdn-icons-png.flaticon.com/128/10638/10638390.png', 'Barcha yerlar'));
  list.add(DataItem('https://cdn-icons-png.flaticon.com/128/10638/10638390.png', 'Qabul qilingan yerlar'));
  list.add(DataItem('https://cdn-icons-png.flaticon.com/128/10638/10638390.png', 'Rad qilingan yerlar'));


  return list;
}


class DataItem {
  String imageUrl;
  String title;

  DataItem(this.imageUrl, this.title);
}