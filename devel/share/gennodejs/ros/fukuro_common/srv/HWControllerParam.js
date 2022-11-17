// Auto-generated. Do not edit!

// (in-package fukuro_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorParameter = require('../msg/MotorParameter.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class HWControllerParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cw = null;
      this.ccw = null;
    }
    else {
      if (initObj.hasOwnProperty('cw')) {
        this.cw = initObj.cw
      }
      else {
        this.cw = new MotorParameter();
      }
      if (initObj.hasOwnProperty('ccw')) {
        this.ccw = initObj.ccw
      }
      else {
        this.ccw = new MotorParameter();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWControllerParamRequest
    // Serialize message field [cw]
    bufferOffset = MotorParameter.serialize(obj.cw, buffer, bufferOffset);
    // Serialize message field [ccw]
    bufferOffset = MotorParameter.serialize(obj.ccw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWControllerParamRequest
    let len;
    let data = new HWControllerParamRequest(null);
    // Deserialize message field [cw]
    data.cw = MotorParameter.deserialize(buffer, bufferOffset);
    // Deserialize message field [ccw]
    data.ccw = MotorParameter.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorParameter.getMessageSize(object.cw);
    length += MotorParameter.getMessageSize(object.ccw);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/HWControllerParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cebca7b8ef71cbcc546a13f7adc0c415';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorParameter cw
    MotorParameter ccw
    
    ================================================================================
    MSG: fukuro_common/MotorParameter
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
    const resolved = new HWControllerParamRequest(null);
    if (msg.cw !== undefined) {
      resolved.cw = MotorParameter.Resolve(msg.cw)
    }
    else {
      resolved.cw = new MotorParameter()
    }

    if (msg.ccw !== undefined) {
      resolved.ccw = MotorParameter.Resolve(msg.ccw)
    }
    else {
      resolved.ccw = new MotorParameter()
    }

    return resolved;
    }
};

class HWControllerParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cw = null;
      this.ccw = null;
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('cw')) {
        this.cw = initObj.cw
      }
      else {
        this.cw = new MotorParameter();
      }
      if (initObj.hasOwnProperty('ccw')) {
        this.ccw = initObj.ccw
      }
      else {
        this.ccw = new MotorParameter();
      }
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWControllerParamResponse
    // Serialize message field [cw]
    bufferOffset = MotorParameter.serialize(obj.cw, buffer, bufferOffset);
    // Serialize message field [ccw]
    bufferOffset = MotorParameter.serialize(obj.ccw, buffer, bufferOffset);
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWControllerParamResponse
    let len;
    let data = new HWControllerParamResponse(null);
    // Deserialize message field [cw]
    data.cw = MotorParameter.deserialize(buffer, bufferOffset);
    // Deserialize message field [ccw]
    data.ccw = MotorParameter.deserialize(buffer, bufferOffset);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorParameter.getMessageSize(object.cw);
    length += MotorParameter.getMessageSize(object.ccw);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/HWControllerParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff0b5bf0e538bb3b55d6c840655838b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorParameter cw
    MotorParameter ccw
    bool ok
    
    ================================================================================
    MSG: fukuro_common/MotorParameter
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
    const resolved = new HWControllerParamResponse(null);
    if (msg.cw !== undefined) {
      resolved.cw = MotorParameter.Resolve(msg.cw)
    }
    else {
      resolved.cw = new MotorParameter()
    }

    if (msg.ccw !== undefined) {
      resolved.ccw = MotorParameter.Resolve(msg.ccw)
    }
    else {
      resolved.ccw = new MotorParameter()
    }

    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: HWControllerParamRequest,
  Response: HWControllerParamResponse,
  md5sum() { return 'e54c465f93b763147b0cf60d586ba040'; },
  datatype() { return 'fukuro_common/HWControllerParam'; }
};
