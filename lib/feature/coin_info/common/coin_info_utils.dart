class CoinInfoUtils {
  CoinInfoUtils._();

  static bool isSeedPhraseValid(String seedPhrase) => seedPhrase.split(' ').length == 12;
}
