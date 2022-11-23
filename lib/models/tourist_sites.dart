class TouristSites{
  //Atributtes
  var _idTs;
  var _name;
  var _photos = [];
  var _location;
  var _description;
  var _temperature;
  //Constructor
  TouristSites(
      this._idTs, this._name, this._photos, this._location, this._description, this._temperature);

  //Constructor Empty
  TouristSites.Empty();

  //Convert TouristSites to Json
  TouristSites.fromJson(Map<String, dynamic> json)
      :
        _idTs = json['idTs'],
        _name = json['name'],
        _photos = json['photos'],
        _location = json['location'],
        _description = json['description'],
        _temperature = json['temperature'];


  Map<String, dynamic> toJson() => {
    'idTs' : _idTs,
    'name' : _name,
    'photos' : _photos,
    'location' : _location,
    'description' : _description,
    'temperature' : _temperature
  };

  //Getters and Setters


  get idTs => _idTs;

  set idTs(value) {
    _idTs = value;
  }
  get description => _description;

  set description(value) {
    _description = value;
  }

  get location => _location;

  set location(value) {
    _location = value;
  }

  get photos => _photos;

  set photos(value) {
    _photos = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }

  get temperature => _temperature;

  set temperature(value) {
    _temperature = value;
  }
}