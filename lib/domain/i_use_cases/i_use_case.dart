abstract class IUseCase<K, V> {
  bool isTest = false;
  Future<K> invoke(V param);
}
