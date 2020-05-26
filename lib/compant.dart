class Company {
  int id;
  String name;

  Company(this.id, this.name);

  static List<Company> getCompanies() {
    return <Company>[
      Company(1, 'Pre_registered user'),
      Company(2, 'European university for modern scince'),
      Company(3, 'Jefferson University'),
      Company(4, 'National Education Network'),
      Company(6, 'Michigan Academy'),
      Company(5, 'Quadrabay'),
    ];
  }
}
