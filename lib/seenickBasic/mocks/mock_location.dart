import 'package:web_dashboard/seenickBasic/models/location_fact.dart';

import '../models/location.dart';

class MockLocation extends Location {
  static FetchAny() {
    return Location(name: 'test', url: 'test2', facts: <LocationFact>[
      LocationFact(
        title: 'fact1',
        text: 'text1',
      ),
      LocationFact(title: 'fact2', text: 'text2')
    ]);
  }
}
