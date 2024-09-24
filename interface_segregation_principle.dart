/*

Don't force the clinets to implement those behavious which are not 
for specific clinet.

*/

abstract interface class OnlineResult {
  void getOnlineResult();
}

abstract interface class OfflineResult {
  void getOfflineResult();
}

class Machenical implements OfflineResult {
  @override
  void getOfflineResult() {
    print('Offline Result');
  }
}

class ComputerScienceResult implements OnlineResult {
  @override
  void getOnlineResult() {
    print('Online Result');
  }
}
