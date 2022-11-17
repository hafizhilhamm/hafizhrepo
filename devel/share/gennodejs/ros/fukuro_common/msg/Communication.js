// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Communication {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.address = null;
      this.tx_port = null;
      this.rx_port = null;
    }
    else {
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
    // Serializes a message object of type Communication
    // Serialize message field [address]
    bufferOffset = _serializer.string(obj.address, buffer, bufferOffset);
    // Serialize message field [tx_port]
    bufferOffset = _serializer.int64(obj.tx_port, buffer, bufferOffset);
    // Serialize message field [rx_port]
    bufferOffset = _serializer.int64(obj.rx_port, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Communication
    let len;
    let data = new Communication(null);
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
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/Communication';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3aa7881fa3e1c105fe7e3d5e50a57a0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Communication(null);
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

module.exports = Communication;
