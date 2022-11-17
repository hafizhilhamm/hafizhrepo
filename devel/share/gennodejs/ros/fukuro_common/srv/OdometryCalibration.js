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

class OdometryCalibrationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.kx = null;
      this.ky = null;
      this.kw = null;
    }
    else {
      if (initObj.hasOwnProperty('kx')) {
        this.kx = initObj.kx
      }
      else {
        this.kx = 0.0;
      }
      if (initObj.hasOwnProperty('ky')) {
        this.ky = initObj.ky
      }
      else {
        this.ky = 0.0;
      }
      if (initObj.hasOwnProperty('kw')) {
        this.kw = initObj.kw
      }
      else {
        this.kw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdometryCalibrationRequest
    // Serialize message field [kx]
    bufferOffset = _serializer.float64(obj.kx, buffer, bufferOffset);
    // Serialize message field [ky]
    bufferOffset = _serializer.float64(obj.ky, buffer, bufferOffset);
    // Serialize message field [kw]
    bufferOffset = _serializer.float64(obj.kw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdometryCalibrationRequest
    let len;
    let data = new OdometryCalibrationRequest(null);
    // Deserialize message field [kx]
    data.kx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ky]
    data.ky = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [kw]
    data.kw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/OdometryCalibrationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72f9fe292d9bdb1063931791c9ac685a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 kx
    float64 ky
    float64 kw
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdometryCalibrationRequest(null);
    if (msg.kx !== undefined) {
      resolved.kx = msg.kx;
    }
    else {
      resolved.kx = 0.0
    }

    if (msg.ky !== undefined) {
      resolved.ky = msg.ky;
    }
    else {
      resolved.ky = 0.0
    }

    if (msg.kw !== undefined) {
      resolved.kw = msg.kw;
    }
    else {
      resolved.kw = 0.0
    }

    return resolved;
    }
};

class OdometryCalibrationResponse {
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
        this.ok = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OdometryCalibrationResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.int64(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OdometryCalibrationResponse
    let len;
    let data = new OdometryCalibrationResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/OdometryCalibrationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ffe45f316ca87fa4adf13cb9d40744eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 ok
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new OdometryCalibrationResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: OdometryCalibrationRequest,
  Response: OdometryCalibrationResponse,
  md5sum() { return 'ebc612ce0a9b4b65aa74121fecb4e9f3'; },
  datatype() { return 'fukuro_common/OdometryCalibration'; }
};
