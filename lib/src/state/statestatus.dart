enum StateStatus{
  none,error,loading,init,complete;
}

extension StateStatusExt on StateStatus{

  bool get isNone => this == StateStatus.none;
  bool get isError => this == StateStatus.error;
  bool get isLoading => this == StateStatus.loading;
  bool get isInit => this == StateStatus.init;
  bool get isComplete => this == StateStatus.complete;

}