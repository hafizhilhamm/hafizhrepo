// Auto-generated. Do not edit!

// (in-package fukuro_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CommunicationServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.connect = null;
      this.address = null;
      this.tx_port = null;
      this.rx_port = null;
    }
    else {
      if (initObj.hasOwnProperty('connect')) {
        this.connect = initObj.connect
      }
      else {
        this.connect = 0;
      }
      if (initObj.hasOwnProperty('address')) {
        this.address = initObj.address
      }
      else {
        this.address = '';
      }
      if (initObj.hasOwnProperty('tx_port')) {
        this.tx_port = initObj.tx_port
      }
      else {
        this.tx_port = 0;
      }
      if (initObj.hasOwnProperty('rx_port')) {
        this.rx_port = initObj.rx_port
      }
      else {
        this.rx_port = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommunicationServiceRequest
    // Serialize message field [connect]
    bufferOffset = _serializer.uint8(obj.connect, buffer, bufferOffset);
    // Serialize message field [address]
    bufferOffset = _serializer.string(obj.address, buffer, bufferOffset);
    // Serialize message field [tx_port]
    bufferOffset = _serializer.int64(obj.tx_port, buffer, bufferOffset);
    // Serialize message field [rx_port]
    bufferOffset = _serializer.int64(obj.rx_port, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommunicationServiceRequest
    let len;
    let data = new CommunicationServiceRequest(null);
    // Deserialize message field [connect]
    data.connect = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [address]
    data.address = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tx_port]
    data.tx_port = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rx_port]
    data.rx_port = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.address);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/CommunicationServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9850078dcf04bfa18c947ca41a0a993a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 connect
    string address
    int64 tx_port
    int64 rx_port
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommunicationServiceRequest(null);
    if (msg.connect !== undefined) {
      resolved.connect = msg.connect;
    }
    else {
      resolved.connect = 0
    }

    if (msg.address !== undefined) {
      resolved.address = msg.address;
    }
    else {
      resolved.address = ''
    }

    if (msg.tx_port !== undefined) {
      resolved.tx_port = msg.tx_port;
    }
    else {
      resolved.tx_port = 0
    }

    if (msg.rx_port !== undefined) {
      resolved.rx_port = msg.rx_port;
    }
    else {
      resolved.rx_port = 0
    }

    return resolved;
    }
};

class CommunicationServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CommunicationServiceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.uint8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommunicationServiceResponse
    let len;
    let data = new CommunicationServiceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/CommunicationServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6cca7c80398b8b31af04b80534923f16';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CommunicationServiceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: CommunicationServiceRequest,
  Response: CommunicationServiceResponse,
  md5sum() { return '59e80fb04ed5834efebecd78c5beaed9'; },
  datatype() { return 'fukuro_common/CommunicationService'; }
};
