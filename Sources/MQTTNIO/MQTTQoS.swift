/// QoS level for messages send and received using MQTT.
public enum MQTTQoS: UInt8 {
    /// QoS 0, indicating a message will be send once. If for some reason the message does not arrive, it will not be send again,
    /// so deliver at most once.
    case atMostOnce = 0
    
    /// QoS 1, the message will be send until an acknowledgement is received from the recipient. As the message will be send multiple times
    /// if no acknowledgement is received, the message will be delivered at least once, but could be delivered mutliple times as well.
    case atLeastOnce = 1
    
    /// QoS 2, the message will be send, acknowledged and the acknowledgement will be also be acknowledged. This makes sure the message
    /// is delivered exactly once and no more than once.
    case exactlyOnce = 2
}
