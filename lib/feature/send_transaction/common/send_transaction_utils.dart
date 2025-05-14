class SendTransactionUtils {
  SendTransactionUtils._();

  static bool isSeedPhraseValid(String seedPhrase) => seedPhrase.split(' ').length == 12;
}
