module connection.peerconnection;
 
class RTCPeerConnection {

private {
    RTCSignalingState _signalingState;
    RTCIceGatheringState _iceGatheringState;
    RTCPeerConnectionState _peerConnectionState;
    RTCIceConnectionState _iceConnectionState;
}
    this(RTCConfiguration conf) {
        _signalingState = stable;
        _iceGatheringState = complete;
        _peerConnectionState = closed;
        _iceConnectionState = closed;
    }
}