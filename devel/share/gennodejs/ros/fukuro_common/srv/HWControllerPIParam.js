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

class HWControllerPIParamRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.k = null;
    }
    else {
      if (initObj.hasOwnProperty('k')) {
        this.k = initObj.k
      }
      else {
        this.k = new MotorParameter();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWControllerPIParamRequest
    // Serialize message field [k]
    bufferOffset = MotorParameter.serialize(obj.k, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWControllerPIParamRequest
    let len;
    let data = new HWControllerPIParamRequest(null);
    // Deserialize message field [k]
    data.k = MotorParameter.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorParameter.getMessageSize(object.k);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/HWControllerPIParamRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71a4035fa6895755720b4427569534e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorParameter k
    
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
    const resolved = new HWControllerPIParamRequest(null);
    if (msg.k !== undefined) {
      resolved.k = MotorParameter.Resolve(msg.k)
    }
    else {
      resolved.k = new MotorParameter()
    }

    return resolved;
    }
};

class HWControllerPIParamResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWControllerPIParamResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWControllerPIParamResponse
    let len;
    let data = new HWControllerPIParamResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/HWControllerPIParamResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f6da3883749771fac40d6deb24a8c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ok
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HWControllerPIParamResponse(null);
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
  Request: HWControllerPIParamRequest,
  Response: HWControllerPIParamResponse,
  md5sum() { return 'ebbd950a01132723798b799989122afe'; },
  datatype() { return 'fukuro_common/HWControllerPIParam'; }
};
