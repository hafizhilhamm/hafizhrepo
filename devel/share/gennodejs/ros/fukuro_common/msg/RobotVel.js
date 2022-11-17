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

class RobotVel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.free1 = null;
      this.free2 = null;
      this.free3 = null;
    }
    else {
      if (initObj.hasOwnProperty('free1')) {
        this.free1 = initObj.free1
      }
      else {
        this.free1 = 0.0;
      }
      if (initObj.hasOwnProperty('free2')) {
        this.free2 = initObj.free2
      }
      else {
        this.free2 = 0.0;
      }
      if (initObj.hasOwnProperty('free3')) {
        this.free3 = initObj.free3
      }
      else {
        this.free3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotVel
    // Serialize message field [free1]
    bufferOffset = _serializer.float32(obj.free1, buffer, bufferOffset);
    // Serialize message field [free2]
    bufferOffset = _serializer.float32(obj.free2, buffer, bufferOffset);
    // Serialize message field [free3]
    bufferOffset = _serializer.float32(obj.free3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotVel
    let len;
    let data = new RobotVel(null);
    // Deserialize message field [free1]
    data.free1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [free2]
    data.free2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [free3]
    data.free3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/RobotVel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c8b02a70b5431ee21c709a8d3e87494';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 free1
    float32 free2
    float32 free3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotVel(null);
    if (msg.free1 !== undefined) {
      resolved.free1 = msg.free1;
    }
    else {
      resolved.free1 = 0.0
    }

    if (msg.free2 !== undefined) {
      resolved.free2 = msg.free2;
    }
    else {
      resolved.free2 = 0.0
    }

    if (msg.free3 !== undefined) {
      resolved.free3 = msg.free3;
    }
    else {
      resolved.free3 = 0.0
    }

    return resolved;
    }
};

module.exports = RobotVel;
