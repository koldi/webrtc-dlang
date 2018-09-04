module connection.configuration;

// TODO implement them
struct RTCIceServer {}
struct RTCCertificate {}

// TODO do we need string enums??????

/**
 * Defines the ICE candidate policy, only these candidates will be used for connectivity checks
 */
enum RTCIceTransportPolicy : string {
    all = "all",    /// ICE agent can use any type of candidate (default)
    relay = "relay" /// ICE agent uses only media relay candidates such as candidates passing through a TURN server
}

/**
 * Used to request a specific policy for gathering ICE candidates if the remote peer isn't compatible with the SDP BUNDLE standard
 */
enum RTCBundlePolicy : string {
    balanced = "balanced",      /// Gather ICE candidates for each media type in use. (default)
    max_compat = "max_compat",  /// Gather ICE candidates for each track.
    max_bundle = "max_bundle"   /// Gather ICE candidates for only one track.
}

/**
 * Use when gathering ICE candidates, in order to support non-multiplexed RTCP.
 */
enum RTCRtcpMuxPolicy : string {
    require = "require",    /// Tells the ICE agent to gather ICE candidates for only RTP, and to RTCP atop them. If RTCP not supported session negotiation fails. (default)
    negotiate = "negotiate" /// Gather both RTP and RTCP candidates. If remote can multoplex RTCP, multiplex RTCP on the RTP candidates, else RTP and RTCP candidates separately.
}

/**
 * Defines a set of parameters to configure how the P2P communication established via RTCPeerConnection.
 */
struct RTCConfiguration {
    RTCIceServer[] _iceServers;             /// An array of ICE servers available to be used, such as STUN and TURN servers.
    RTCIceTransportPolicy _transportPolicy; /// Indicates which candidates the ICE agent is allowed to use.
    RTCBundlePolicy _bundlePolicy;          /// Indicates which media-bundling policy to use when gathering ICE candidates.
    RTCRtcpMuxPolicy _rtcpMuxPolicy;        /// Indicates which rtcp-mux policy to use when gathering ICE candidates.
    wstring _peerIdentity;                  /// Sets the target peer identity for RTCPeerConnection.
    RTCCertificate[] _certificates;         /// A set of certificate that the RTCPeerConnection uses to authenticate.
    short _iceCandidatePoolSize;            /// Size of the prefetched ICE pool.
}