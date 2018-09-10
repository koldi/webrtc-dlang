module connection.states;

/**
 * Show the actual state of signaling connection
 */
enum RTCSignalingState {
    stable,                 /// There is no exchange in progress, this is also the initial state
    have_local_offer,       /// Local description of type "offer" has been successfully applied
    have_remote_offer,      /// Remote description of type "offer" has been successfully applied
    have_local_pranswer,    /// Remote description of type "offer" and local type "pranswer" has been successfully applied
    have_remote_pranswer,   /// Local description of type "offer" and remote type "pranswer" has been successfully applied
    closed                  /// Connection closed
}

/**
 * 
 */
enum RTCIceGatheringState {
    new,        /// Any of the RTCIceTransports are in the "new" gathering state, none of the transports are gathering state, or no transports at all.
    gathering,  /// Any of the RTCIceTransports are in "gathering" state
    complete    /// At least one RTCIceTransport exists, and all RTCIceTransports are in "completed" gathering state
}

/**
 * 
 */
enum RTCPeerConnectionState {
    new,            /// there are no transport or any of RTCIceTransports or RTCDtlsTransports are in new state or none of them in other states
    connecting,     /// Any of the transports above are in connecting state, or checking state and none of them are failed
    connected,      /// All transports above are in connected, completed or closed state and at least one of them is connected or completed
    disconnected,   /// Any of the transports are in disconnected state and none of them in failed, connecting or checking
    failed,         /// Any of the transports are in failed state
    closed          /// RTCPeerConnection is closed.
}

/**
 * 
 */
enum RTCIceConnectionState {
    new,            /// Any of the RTCIceTransports are in the new state and none of them are in checking, disconnected or failed, or all in closed
    checking,       /// Any of the RTCIceTransports are in checking state and none of them in disconnected or closed
    connected,      /// All RTCIceTransports are in connected, completed or closed and at least one of them is connected
    completed,      /// All RTCIceTransports are in completed or closed state and at least one of them is completed
    disconnected,   /// Any of RTCIceTransports are in disconnected and none of them are in failed
    failed,         /// Any of RTCIceTransports are in failed state
    closed          /// RTCPeerConnection is closed
}