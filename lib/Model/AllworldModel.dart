// /// updated : 1671895435730
// /// cases : 661343977
// /// todayCases : 307455
// /// deaths : 6684955
// /// todayDeaths : 623
// /// recovered : 633942189
// /// todayRecovered : 179923
// /// active : 20716833
// /// critical : 38530
// /// casesPerOneMillion : 84844
// /// deathsPerOneMillion : 857.6
// /// tests : 6878012163
// /// testsPerOneMillion : 865710.45
// /// population : 7944933753
// /// oneCasePerPeople : 0
// /// oneDeathPerPeople : 0
// /// oneTestPerPeople : 0
// /// activePerOneMillion : 2607.55
// /// recoveredPerOneMillion : 79792
// /// criticalPerOneMillion : 4.85
// /// affectedCountries : 230
//
// class AllworldModel {
//   AllworldModel({
//       int? updated,
//       int? cases,
//       int? todayCases,
//       int? deaths,
//       int? todayDeaths,
//       int? recovered,
//       int? todayRecovered,
//       int? active,
//       int? critical,
//       int? casesPerOneMillion,
//       double? deathsPerOneMillion,
//       int? tests,
//       double? testsPerOneMillion,
//       int? population,
//       int? oneCasePerPeople,
//       int? oneDeathPerPeople,
//       int? oneTestPerPeople,
//       double? activePerOneMillion,
//       int? recoveredPerOneMillion,
//       double? criticalPerOneMillion,
//       int? affectedCountries,}){
//     _updated = updated;
//     _cases = cases;
//     _todayCases = todayCases;
//     _deaths = deaths;
//     _todayDeaths = todayDeaths;
//     _recovered = recovered;
//     _todayRecovered = todayRecovered;
//     _active = active;
//     _critical = critical;
//     _casesPerOneMillion = casesPerOneMillion;
//     _deathsPerOneMillion = deathsPerOneMillion;
//     _tests = tests;
//     _testsPerOneMillion = testsPerOneMillion;
//     _population = population;
//     _oneCasePerPeople = oneCasePerPeople;
//     _oneDeathPerPeople = oneDeathPerPeople;
//     _oneTestPerPeople = oneTestPerPeople;
//     _activePerOneMillion = activePerOneMillion;
//     _recoveredPerOneMillion = recoveredPerOneMillion;
//     _criticalPerOneMillion = criticalPerOneMillion;
//     _affectedCountries = affectedCountries;
// }
//
//   AllworldModel.fromJson(dynamic json) {
//     _updated = json['updated'];
//     _cases = json['cases'];
//     _todayCases = json['todayCases'];
//     _deaths = json['deaths'];
//     _todayDeaths = json['todayDeaths'];
//     _recovered = json['recovered'];
//     _todayRecovered = json['todayRecovered'];
//     _active = json['active'];
//     _critical = json['critical'];
//     _casesPerOneMillion = json['casesPerOneMillion'];
//     _deathsPerOneMillion = json['deathsPerOneMillion'];
//     _tests = json['tests'];
//     _testsPerOneMillion = json['testsPerOneMillion'];
//     _population = json['population'];
//     _oneCasePerPeople = json['oneCasePerPeople'];
//     _oneDeathPerPeople = json['oneDeathPerPeople'];
//     _oneTestPerPeople = json['oneTestPerPeople'];
//     _activePerOneMillion = json['activePerOneMillion'];
//     _recoveredPerOneMillion = json['recoveredPerOneMillion'];
//     _criticalPerOneMillion = json['criticalPerOneMillion'];
//     _affectedCountries = json['affectedCountries'];
//   }
//   int? _updated;
//   int? _cases;
//   int? _todayCases;
//   int? _deaths;
//   int? _todayDeaths;
//   int? _recovered;
//   int? _todayRecovered;
//   int? _active;
//   int? _critical;
//   int? _casesPerOneMillion;
//   double? _deathsPerOneMillion;
//   int? _tests;
//   double? _testsPerOneMillion;
//   int? _population;
//   int? _oneCasePerPeople;
//   int? _oneDeathPerPeople;
//   int? _oneTestPerPeople;
//   double? _activePerOneMillion;
//   int? _recoveredPerOneMillion;
//   double? _criticalPerOneMillion;
//   int? _affectedCountries;
// AllworldModel copyWith({  int? updated,
//   int? cases,
//   int? todayCases,
//   int? deaths,
//   int? todayDeaths,
//   int? recovered,
//   int? todayRecovered,
//   int? active,
//   int? critical,
//   int? casesPerOneMillion,
//   double? deathsPerOneMillion,
//   int? tests,
//   double? testsPerOneMillion,
//   int? population,
//   int? oneCasePerPeople,
//   int? oneDeathPerPeople,
//   int? oneTestPerPeople,
//   double? activePerOneMillion,
//   int? recoveredPerOneMillion,
//   double? criticalPerOneMillion,
//   int? affectedCountries,
// }) => AllworldModel(  updated: updated ?? _updated,
//   cases: cases ?? _cases,
//   todayCases: todayCases ?? _todayCases,
//   deaths: deaths ?? _deaths,
//   todayDeaths: todayDeaths ?? _todayDeaths,
//   recovered: recovered ?? _recovered,
//   todayRecovered: todayRecovered ?? _todayRecovered,
//   active: active ?? _active,
//   critical: critical ?? _critical,
//   casesPerOneMillion: casesPerOneMillion ?? _casesPerOneMillion,
//   deathsPerOneMillion: deathsPerOneMillion ?? _deathsPerOneMillion,
//   tests: tests ?? _tests,
//   testsPerOneMillion: testsPerOneMillion ?? _testsPerOneMillion,
//   population: population ?? _population,
//   oneCasePerPeople: oneCasePerPeople ?? _oneCasePerPeople,
//   oneDeathPerPeople: oneDeathPerPeople ?? _oneDeathPerPeople,
//   oneTestPerPeople: oneTestPerPeople ?? _oneTestPerPeople,
//   activePerOneMillion: activePerOneMillion ?? _activePerOneMillion,
//   recoveredPerOneMillion: recoveredPerOneMillion ?? _recoveredPerOneMillion,
//   criticalPerOneMillion: criticalPerOneMillion ?? _criticalPerOneMillion,
//   affectedCountries: affectedCountries ?? _affectedCountries,
// );
//   int? get updated => _updated;
//   int? get cases => _cases;
//   int? get todayCases => _todayCases;
//   int? get deaths => _deaths;
//   int? get todayDeaths => _todayDeaths;
//   int? get recovered => _recovered;
//   int? get todayRecovered => _todayRecovered;
//   int? get active => _active;
//   int? get critical => _critical;
//   int? get casesPerOneMillion => _casesPerOneMillion;
//   double? get deathsPerOneMillion => _deathsPerOneMillion;
//   int? get tests => _tests;
//   double? get testsPerOneMillion => _testsPerOneMillion;
//   int? get population => _population;
//   int? get oneCasePerPeople => _oneCasePerPeople;
//   int? get oneDeathPerPeople => _oneDeathPerPeople;
//   int? get oneTestPerPeople => _oneTestPerPeople;
//   double? get activePerOneMillion => _activePerOneMillion;
//   int? get recoveredPerOneMillion => _recoveredPerOneMillion;
//   double? get criticalPerOneMillion => _criticalPerOneMillion;
//   int? get affectedCountries => _affectedCountries;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['updated'] = _updated;
//     map['cases'] = _cases;
//     map['todayCases'] = _todayCases;
//     map['deaths'] = _deaths;
//     map['todayDeaths'] = _todayDeaths;
//     map['recovered'] = _recovered;
//     map['todayRecovered'] = _todayRecovered;
//     map['active'] = _active;
//     map['critical'] = _critical;
//     map['casesPerOneMillion'] = _casesPerOneMillion;
//     map['deathsPerOneMillion'] = _deathsPerOneMillion;
//     map['tests'] = _tests;
//     map['testsPerOneMillion'] = _testsPerOneMillion;
//     map['population'] = _population;
//     map['oneCasePerPeople'] = _oneCasePerPeople;
//     map['oneDeathPerPeople'] = _oneDeathPerPeople;
//     map['oneTestPerPeople'] = _oneTestPerPeople;
//     map['activePerOneMillion'] = _activePerOneMillion;
//     map['recoveredPerOneMillion'] = _recoveredPerOneMillion;
//     map['criticalPerOneMillion'] = _criticalPerOneMillion;
//     map['affectedCountries'] = _affectedCountries;
//     return map;
//   }
//
// }
class AllupdateModel {
  AllupdateModel({
    required this.updated,
    required this.cases,
    required this.todayCases,
    required this.deaths,
    required this.todayDeaths,
    required this.recovered,
    required this.todayRecovered,
    required this.active,
    required this.critical,
    required this.casesPerOneMillion,
    required this.deathsPerOneMillion,
    required this.tests,
    required this.testsPerOneMillion,
    required this.population,
    required this.oneCasePerPeople,
    required this.oneDeathPerPeople,
    required this.oneTestPerPeople,
    required this.activePerOneMillion,
    required this.recoveredPerOneMillion,
    required this.criticalPerOneMillion,
    required this.affectedCountries,
  });
  late final int updated;
  late final int cases;
  late final int todayCases;
  late final int deaths;
  late final int todayDeaths;
  late final int recovered;
  late final int todayRecovered;
  late final int active;
  late final int critical;
  late final int casesPerOneMillion;
  late final double deathsPerOneMillion;
  late final int tests;
  late final double testsPerOneMillion;
  late final int population;
  late final int oneCasePerPeople;
  late final int oneDeathPerPeople;
  late final int oneTestPerPeople;
  late final double activePerOneMillion;
  late final double recoveredPerOneMillion;
  late final double criticalPerOneMillion;
  late final int affectedCountries;

  AllupdateModel.fromJson(Map<String, dynamic> json){
    updated = json['updated'];
    cases = json['cases'];
    todayCases = json['todayCases'];
    deaths = json['deaths'];
    todayDeaths = json['todayDeaths'];
    recovered = json['recovered'];
    todayRecovered = json['todayRecovered'];
    active = json['active'];
    critical = json['critical'];
    casesPerOneMillion = json['casesPerOneMillion'];
    deathsPerOneMillion = json['deathsPerOneMillion'];
    tests = json['tests'];
    testsPerOneMillion = json['testsPerOneMillion'];
    population = json['population'];
    oneCasePerPeople = json['oneCasePerPeople'];
    oneDeathPerPeople = json['oneDeathPerPeople'];
    oneTestPerPeople = json['oneTestPerPeople'];
    activePerOneMillion = json['activePerOneMillion'];
    recoveredPerOneMillion = json['recoveredPerOneMillion'];
    criticalPerOneMillion = json['criticalPerOneMillion'];
    affectedCountries = json['affectedCountries'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['updated'] = updated;
    _data['cases'] = cases;
    _data['todayCases'] = todayCases;
    _data['deaths'] = deaths;
    _data['todayDeaths'] = todayDeaths;
    _data['recovered'] = recovered;
    _data['todayRecovered'] = todayRecovered;
    _data['active'] = active;
    _data['critical'] = critical;
    _data['casesPerOneMillion'] = casesPerOneMillion;
    _data['deathsPerOneMillion'] = deathsPerOneMillion;
    _data['tests'] = tests;
    _data['testsPerOneMillion'] = testsPerOneMillion;
    _data['population'] = population;
    _data['oneCasePerPeople'] = oneCasePerPeople;
    _data['oneDeathPerPeople'] = oneDeathPerPeople;
    _data['oneTestPerPeople'] = oneTestPerPeople;
    _data['activePerOneMillion'] = activePerOneMillion;
    _data['recoveredPerOneMillion'] = recoveredPerOneMillion;
    _data['criticalPerOneMillion'] = criticalPerOneMillion;
    _data['affectedCountries'] = affectedCountries;
    return _data;
  }
}