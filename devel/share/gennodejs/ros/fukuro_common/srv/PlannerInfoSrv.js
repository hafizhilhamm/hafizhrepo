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

class PlannerInfoSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.width = null;
      this.height = null;
      this.grid_size = null;
    }
    else {
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('grid_size')) {
        this.grid_size = initObj.grid_size
      }
      else {
        this.grid_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlannerInfoSrvRequest
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    // Serialize message field [grid_size]
    bufferOffset = _serializer.float64(obj.grid_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerInfoSrvRequest
    let len;
    let data = new PlannerInfoSrvRequest(null);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [grid_size]
    data.grid_size = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/PlannerInfoSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '802049f50763bc7219af4576c0df7321';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 width
    float64 height
    float64 grid_size
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerInfoSrvRequest(null);
    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.grid_size !== undefined) {
      resolved.grid_size = msg.grid_size;
    }
    else {
      resolved.grid_size = 0.0
    }

    return resolved;
    }
};

class PlannerInfoSrvResponse {
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
    // Serializes a message object of type PlannerInfoSrvResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.uint8(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlannerInfoSrvResponse
    let len;
    let data = new PlannerInfoSrvResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/PlannerInfoSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ebb43f57b7820ff999dc120ba80eb7d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ok
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlannerInfoSrvResponse(null);
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
  Request: PlannerInfoSrvRequest,
  Response: PlannerInfoSrvResponse,
  md5sum() { return '1be42ff1b6414a6f4a0eb49fbae122a7'; },
  datatype() { return 'fukuro_common/PlannerInfoSrv'; }
};
