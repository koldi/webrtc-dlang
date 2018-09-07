module connection.configuration.oauth;

/**
 *  Describe OAuth credential information
 */
struct RTCOAuthCredential {
    wstring _macKey;        /// base-64 encoded
    wstring _accessToken;   /// base-64 encoded
}