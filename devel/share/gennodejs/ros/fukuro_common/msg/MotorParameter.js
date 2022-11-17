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

class MotorParameter {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.n_speed = null;
      this.motor1 = null;
      this.motor2 = null;
      this.motor3 = null;
    }
    else {
      if (initObj.hasOwnProperty('n_speed')) {
        this.n_speed = initObj.n_speed
      }
      else {
        this.n_speed = 0;
      }
      if (initObj.hasOwnProperty('motor1')) {
        this.motor1 = initObj.motor1
      }
      else {
        this.motor1 = [];
      }
      if (initObj.hasOwnProperty('motor2')) {
        this.motor2 = initObj.motor2
      }
      else {
        this.motor2 = [];
      }
      if (initObj.hasOwnProperty('motor3')) {
        this.motor3 = initObj.motor3
      }
      else {
        this.motor3 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorParameter
    // Serialize message field [n_speed]
    bufferOffset = _serializer.int8(obj.n_speed, buffer, bufferOffset);
    // Serialize message field [motor1]
    bufferOffset = _arraySerializer.float64(obj.motor1, buffer, bufferOffset, null);
    // Serialize message field [motor2]
    bufferOffset = _arraySerializer.float64(obj.motor2, buffer, bufferOffset, null);
    // Serialize message field [motor3]
    bufferOffset = _arraySerializer.float64(obj.motor3, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorParameter
    let len;
    let data = new MotorParameter(null);
    // Deserialize message field [n_speed]
    data.n_speed = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [motor1]
    data.motor1 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor2]
    data.motor2 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [motor3]
    data.motor3 = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.motor1.length;
    length += 8 * object.motor2.length;
    length += 8 * object.motor3.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/MotorParameter';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8645ce99acc3de9f5817e6d22e97aae7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 n_speed
    float64[] motor1
    float64[] motor2
    float64[] motor3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorParameter(null);
    if (msg.n_speed !== undefined) {
      resolved.n_speed = msg.n_speed;
    }
    else {
      resolved.n_speed = 0
    }

    if (msg.motor1 !== undefined) {
      resolved.motor1 = msg.motor1;
    }
    else {
      resolved.motor1 = []
    }

    if (msg.motor2 !== undefined) {
      resolved.motor2 = msg.motor2;
    }
    else {
      resolved.motor2 = []
    }

    if (msg.motor3 !== undefined) {
      resolved.motor3 = msg.motor3;
    }
    else {
      resolved.motor3 = []
    }

    return resolved;
    }
};

module.exports = MotorParameter;
