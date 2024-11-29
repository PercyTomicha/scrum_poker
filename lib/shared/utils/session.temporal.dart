enum SessionType {ScrumMaster, Developer}

class SessionTemporal {
  static SessionType? type = SessionType.ScrumMaster;

  static updateType(SessionType newType) {
    type = newType;
  }
}