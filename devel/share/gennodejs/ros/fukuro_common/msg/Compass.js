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

class Compass {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmps = null;
    }
    else {
      if (initObj.hasOwnProperty('cmps')) {
        this.cmps = initObj.cmps
      }
      else {
        this.cmps = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Compass
    // Serialize message field [cmps]
    bufferOffset = _serializer.float64(obj.cmps, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Compass
    let len;
    let data = new Compass(null);
    // Deserialize message field [cmps]
    data.cmps = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/Compass';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fef2f746f54270aba8e56b443ad3f25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 cmps
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Compass(null);
    if (msg.cmps !== undefined) {
      resolved.cmps = msg.cmps;
    }
    else {
      resolved.cmps = 0.0
    }

    return resolved;
    }
};

module.exports = Compass;
