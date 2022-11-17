// Auto-generated. Do not edit!

// (in-package fukuro_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Obstacle = require('../msg/Obstacle.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ObstaclesServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle')) {
        this.obstacle = initObj.obstacle
      }
      else {
        this.obstacle = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObstaclesServiceRequest
    // Serialize message field [obstacle]
    // Serialize the length for message field [obstacle]
    bufferOffset = _serializer.uint32(obj.obstacle.length, buffer, bufferOffset);
    obj.obstacle.forEach((val) => {
      bufferOffset = Obstacle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstaclesServiceRequest
    let len;
    let data = new ObstaclesServiceRequest(null);
    // Deserialize message field [obstacle]
    // Deserialize array length for message field [obstacle]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacle = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacle[i] = Obstacle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 25 * object.obstacle.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/ObstaclesServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c04b02beeb901211c5a0f08490a07a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Obstacle[] obstacle
    
    ================================================================================
    MSG: fukuro_common/Obstacle
    Point2d pos
    float64 r
    int8 shape
    ================================================================================
    MSG: fukuro_common/Point2d
    float64 x
    float64 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObstaclesServiceRequest(null);
    if (msg.obstacle !== undefined) {
      resolved.obstacle = new Array(msg.obstacle.length);
      for (let i = 0; i < resolved.obstacle.length; ++i) {
        resolved.obstacle[i] = Obstacle.Resolve(msg.obstacle[i]);
      }
    }
    else {
      resolved.obstacle = []
    }

    return resolved;
    }
};

class ObstaclesServiceResponse {
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
    // Serializes a message object of type ObstaclesServiceResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.uint8(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObstaclesServiceResponse
    let len;
    let data = new ObstaclesServiceResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/ObstaclesServiceResponse';
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
    const resolved = new ObstaclesServiceResponse(null);
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
  Request: ObstaclesServiceRequest,
  Response: ObstaclesServiceResponse,
  md5sum() { return '81a6d1748dadd1a2f252dedfae401a7d'; },
  datatype() { return 'fukuro_common/ObstaclesService'; }
};
