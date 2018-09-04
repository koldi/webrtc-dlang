module connection.iceserver;

/**
 * Credential type for TURN server.
 */
enum RTCCredentialType {
    password = "password",  /// The credential is a long-term authentication username and password.
    oauth = "oauth"         /// Oauth 2.0 based authentication.
}

/**
 * Describe STUN and TURN servers that can be usedf by the ICE agent to establish a connection with a peer.
 */
struct RTCIceServer {
    import std.variant;
    wstring[] _urls;                    /// (STUN/TURN) server Url
    wstring _username;                  /// (TURN) username if RTCCredentioalType is password, KeyId(kid) otherwise
    Variant _credential;                /// (TURN) long-term authentication password if RTCCredentialType is password, RTCOAuthCredebtial otherwise
    RTCCredentialType _credentialType;  /// (TURN) what kind of authorization used
}