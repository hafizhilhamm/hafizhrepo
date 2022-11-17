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

class StaticObstaclesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle1 = null;
      this.obstacle2 = null;
      this.obstacle3 = null;
      this.obstacle4 = null;
      this.obstacle5 = null;
      this.obstacle6 = null;
      this.obstacle7 = null;
      this.obstacle8 = null;
      this.obstacle_kiper = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle1')) {
        this.obstacle1 = initObj.obstacle1
      }
      else {
        this.obstacle1 = false;
      }
      if (initObj.hasOwnProperty('obstacle2')) {
        this.obstacle2 = initObj.obstacle2
      }
      else {
        this.obstacle2 = false;
      }
      if (initObj.hasOwnProperty('obstacle3')) {
        this.obstacle3 = initObj.obstacle3
      }
      else {
        this.obstacle3 = false;
      }
      if (initObj.hasOwnProperty('obstacle4')) {
        this.obstacle4 = initObj.obstacle4
      }
      else {
        this.obstacle4 = false;
      }
      if (initObj.hasOwnProperty('obstacle5')) {
        this.obstacle5 = initObj.obstacle5
      }
      else {
        this.obstacle5 = false;
      }
      if (initObj.hasOwnProperty('obstacle6')) {
        this.obstacle6 = initObj.obstacle6
      }
      else {
        this.obstacle6 = false;
      }
      if (initObj.hasOwnProperty('obstacle7')) {
        this.obstacle7 = initObj.obstacle7
      }
      else {
        this.obstacle7 = false;
      }
      if (initObj.hasOwnProperty('obstacle8')) {
        this.obstacle8 = initObj.obstacle8
      }
      else {
        this.obstacle8 = false;
      }
      if (initObj.hasOwnProperty('obstacle_kiper')) {
        this.obstacle_kiper = initObj.obstacle_kiper
      }
      else {
        this.obstacle_kiper = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StaticObstaclesRequest
    // Serialize message field [obstacle1]
    bufferOffset = _serializer.bool(obj.obstacle1, buffer, bufferOffset);
    // Serialize message field [obstacle2]
    bufferOffset = _serializer.bool(obj.obstacle2, buffer, bufferOffset);
    // Serialize message field [obstacle3]
    bufferOffset = _serializer.bool(obj.obstacle3, buffer, bufferOffset);
    // Serialize message field [obstacle4]
    bufferOffset = _serializer.bool(obj.obstacle4, buffer, bufferOffset);
    // Serialize message field [obstacle5]
    bufferOffset = _serializer.bool(obj.obstacle5, buffer, bufferOffset);
    // Serialize message field [obstacle6]
    bufferOffset = _serializer.bool(obj.obstacle6, buffer, bufferOffset);
    // Serialize message field [obstacle7]
    bufferOffset = _serializer.bool(obj.obstacle7, buffer, bufferOffset);
    // Serialize message field [obstacle8]
    bufferOffset = _serializer.bool(obj.obstacle8, buffer, bufferOffset);
    // Serialize message field [obstacle_kiper]
    bufferOffset = _serializer.bool(obj.obstacle_kiper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StaticObstaclesRequest
    let len;
    let data = new StaticObstaclesRequest(null);
    // Deserialize message field [obstacle1]
    data.obstacle1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle2]
    data.obstacle2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle3]
    data.obstacle3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle4]
    data.obstacle4 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle5]
    data.obstacle5 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle6]
    data.obstacle6 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle7]
    data.obstacle7 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle8]
    data.obstacle8 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle_kiper]
    data.obstacle_kiper = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/StaticObstaclesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c73a535d4322a594587f130ce0daad38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool obstacle1
    bool obstacle2
    bool obstacle3
    bool obstacle4
    bool obstacle5
    bool obstacle6
    bool obstacle7
    bool obstacle8
    bool obstacle_kiper
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StaticObstaclesRequest(null);
    if (msg.obstacle1 !== undefined) {
      resolved.obstacle1 = msg.obstacle1;
    }
    else {
      resolved.obstacle1 = false
    }

    if (msg.obstacle2 !== undefined) {
      resolved.obstacle2 = msg.obstacle2;
    }
    else {
      resolved.obstacle2 = false
    }

    if (msg.obstacle3 !== undefined) {
      resolved.obstacle3 = msg.obstacle3;
    }
    else {
      resolved.obstacle3 = false
    }

    if (msg.obstacle4 !== undefined) {
      resolved.obstacle4 = msg.obstacle4;
    }
    else {
      resolved.obstacle4 = false
    }

    if (msg.obstacle5 !== undefined) {
      resolved.obstacle5 = msg.obstacle5;
    }
    else {
      resolved.obstacle5 = false
    }

    if (msg.obstacle6 !== undefined) {
      resolved.obstacle6 = msg.obstacle6;
    }
    else {
      resolved.obstacle6 = false
    }

    if (msg.obstacle7 !== undefined) {
      resolved.obstacle7 = msg.obstacle7;
    }
    else {
      resolved.obstacle7 = false
    }

    if (msg.obstacle8 !== undefined) {
      resolved.obstacle8 = msg.obstacle8;
    }
    else {
      resolved.obstacle8 = false
    }

    if (msg.obstacle_kiper !== undefined) {
      resolved.obstacle_kiper = msg.obstacle_kiper;
    }
    else {
      resolved.obstacle_kiper = false
    }

    return resolved;
    }
};

class StaticObstaclesResponse {
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
    // Serializes a message object of type StaticObstaclesResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.uint8(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StaticObstaclesResponse
    let len;
    let data = new StaticObstaclesResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/StaticObstaclesResponse';
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
    const resolved = new StaticObstaclesResponse(null);
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
  Request: StaticObstaclesRequest,
  Response: StaticObstaclesResponse,
  md5sum() { return 'd9e5d5b887b6aabe5a57861e1897da91'; },
  datatype() { return 'fukuro_common/StaticObstacles'; }
};
