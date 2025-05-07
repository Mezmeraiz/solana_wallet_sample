class CoinListUtils {
  CoinListUtils._();

  static bool isSeedPhraseValid(String seedPhrase) => seedPhrase.split(' ').length == 12;
}
