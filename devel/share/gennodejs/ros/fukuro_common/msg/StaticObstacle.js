// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Obstacle = require('./Obstacle.js');

//-----------------------------------------------------------

class StaticObstacle {
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
    }
    else {
      if (initObj.hasOwnProperty('obstacle1')) {
        this.obstacle1 = initObj.obstacle1
      }
      else {
        this.obstacle1 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle2')) {
        this.obstacle2 = initObj.obstacle2
      }
      else {
        this.obstacle2 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle3')) {
        this.obstacle3 = initObj.obstacle3
      }
      else {
        this.obstacle3 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle4')) {
        this.obstacle4 = initObj.obstacle4
      }
      else {
        this.obstacle4 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle5')) {
        this.obstacle5 = initObj.obstacle5
      }
      else {
        this.obstacle5 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle6')) {
        this.obstacle6 = initObj.obstacle6
      }
      else {
        this.obstacle6 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle7')) {
        this.obstacle7 = initObj.obstacle7
      }
      else {
        this.obstacle7 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle8')) {
        this.obstacle8 = initObj.obstacle8
      }
      else {
        this.obstacle8 = new Obstacle();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StaticObstacle
    // Serialize message field [obstacle1]
    bufferOffset = Obstacle.serialize(obj.obstacle1, buffer, bufferOffset);
    // Serialize message field [obstacle2]
    bufferOffset = Obstacle.serialize(obj.obstacle2, buffer, bufferOffset);
    // Serialize message field [obstacle3]
    bufferOffset = Obstacle.serialize(obj.obstacle3, buffer, bufferOffset);
    // Serialize message field [obstacle4]
    bufferOffset = Obstacle.serialize(obj.obstacle4, buffer, bufferOffset);
    // Serialize message field [obstacle5]
    bufferOffset = Obstacle.serialize(obj.obstacle5, buffer, bufferOffset);
    // Serialize message field [obstacle6]
    bufferOffset = Obstacle.serialize(obj.obstacle6, buffer, bufferOffset);
    // Serialize message field [obstacle7]
    bufferOffset = Obstacle.serialize(obj.obstacle7, buffer, bufferOffset);
    // Serialize message field [obstacle8]
    bufferOffset = Obstacle.serialize(obj.obstacle8, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StaticObstacle
    let len;
    let data = new StaticObstacle(null);
    // Deserialize message field [obstacle1]
    data.obstacle1 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle2]
    data.obstacle2 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle3]
    data.obstacle3 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle4]
    data.obstacle4 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle5]
    data.obstacle5 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle6]
    data.obstacle6 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle7]
    data.obstacle7 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle8]
    data.obstacle8 = Obstacle.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 200;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/StaticObstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46d3fb587aed8a021e47dcb530b200ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Obstacle obstacle1
    Obstacle obstacle2
    Obstacle obstacle3
    Obstacle obstacle4
    Obstacle obstacle5
    Obstacle obstacle6
    Obstacle obstacle7
    Obstacle obstacle8
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
    const resolved = new StaticObstacle(null);
    if (msg.obstacle1 !== undefined) {
      resolved.obstacle1 = Obstacle.Resolve(msg.obstacle1)
    }
    else {
      resolved.obstacle1 = new Obstacle()
    }

    if (msg.obstacle2 !== undefined) {
      resolved.obstacle2 = Obstacle.Resolve(msg.obstacle2)
    }
    else {
      resolved.obstacle2 = new Obstacle()
    }

    if (msg.obstacle3 !== undefined) {
      resolved.obstacle3 = Obstacle.Resolve(msg.obstacle3)
    }
    else {
      resolved.obstacle3 = new Obstacle()
    }

    if (msg.obstacle4 !== undefined) {
      resolved.obstacle4 = Obstacle.Resolve(msg.obstacle4)
    }
    else {
      resolved.obstacle4 = new Obstacle()
    }

    if (msg.obstacle5 !== undefined) {
      resolved.obstacle5 = Obstacle.Resolve(msg.obstacle5)
    }
    else {
      resolved.obstacle5 = new Obstacle()
    }

    if (msg.obstacle6 !== undefined) {
      resolved.obstacle6 = Obstacle.Resolve(msg.obstacle6)
    }
    else {
      resolved.obstacle6 = new Obstacle()
    }

    if (msg.obstacle7 !== undefined) {
      resolved.obstacle7 = Obstacle.Resolve(msg.obstacle7)
    }
    else {
      resolved.obstacle7 = new Obstacle()
    }

    if (msg.obstacle8 !== undefined) {
      resolved.obstacle8 = Obstacle.Resolve(msg.obstacle8)
    }
    else {
      resolved.obstacle8 = new Obstacle()
    }

    return resolved;
    }
};

module.exports = StaticObstacle;
