module certificate.rtccertificate;

// TODO
alias RTCDtlsFingerprint int; 
alias AlgorithmIdentifier = int;

/**
 * Interface that represents a certificate used to authenticate WebRTC communications.
 */
interface RTCCertificate {
    long expires;                                           /// Indicates the date and time in milliseconds after the certificate will be invalid
    static AlgorithmIdentifier[] getSupportedAlgorithms();  /// Supported certificate algorithms. At least one MUST be returned.
    RTCDtlsFingerprint[] getFingerPrints();                 /// Returns the list of certificate fingerprints, one of which ic computed with the digest algorithm.
}
