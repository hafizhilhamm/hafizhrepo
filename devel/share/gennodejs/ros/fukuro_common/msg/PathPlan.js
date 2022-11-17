// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point2d = require('./Point2d.js');

//-----------------------------------------------------------

class PathPlan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacles = null;
      this.solutions = null;
      this.start = null;
      this.goal = null;
      this.search_time = null;
      this.solved = null;
      this.updated = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
      if (initObj.hasOwnProperty('solutions')) {
        this.solutions = initObj.solutions
      }
      else {
        this.solutions = [];
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = new Point2d();
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new Point2d();
      }
      if (initObj.hasOwnProperty('search_time')) {
        this.search_time = initObj.search_time
      }
      else {
        this.search_time = 0.0;
      }
      if (initObj.hasOwnProperty('solved')) {
        this.solved = initObj.solved
      }
      else {
        this.solved = false;
      }
      if (initObj.hasOwnProperty('updated')) {
        this.updated = initObj.updated
      }
      else {
        this.updated = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlan
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [solutions]
    // Serialize the length for message field [solutions]
    bufferOffset = _serializer.uint32(obj.solutions.length, buffer, bufferOffset);
    obj.solutions.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [start]
    bufferOffset = Point2d.serialize(obj.start, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = Point2d.serialize(obj.goal, buffer, bufferOffset);
    // Serialize message field [search_time]
    bufferOffset = _serializer.float64(obj.search_time, buffer, bufferOffset);
    // Serialize message field [solved]
    bufferOffset = _serializer.bool(obj.solved, buffer, bufferOffset);
    // Serialize message field [updated]
    bufferOffset = _serializer.bool(obj.updated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlan
    let len;
    let data = new PathPlan(null);
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [solutions]
    // Deserialize array length for message field [solutions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.solutions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.solutions[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [start]
    data.start = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [search_time]
    data.search_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [solved]
    data.solved = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [updated]
    data.updated = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.obstacles.length;
    length += 16 * object.solutions.length;
    return length + 50;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/PathPlan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bac9c86aba64a149e610ac3cafcaef0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point2d[] obstacles
    Point2d[] solutions
    Point2d start
    Point2d goal
    float64 search_time
    bool solved
    bool updated
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
    const resolved = new PathPlan(null);
    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = Point2d.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    if (msg.solutions !== undefined) {
      resolved.solutions = new Array(msg.solutions.length);
      for (let i = 0; i < resolved.solutions.length; ++i) {
        resolved.solutions[i] = Point2d.Resolve(msg.solutions[i]);
      }
    }
    else {
      resolved.solutions = []
    }

    if (msg.start !== undefined) {
      resolved.start = Point2d.Resolve(msg.start)
    }
    else {
      resolved.start = new Point2d()
    }

    if (msg.goal !== undefined) {
      resolved.goal = Point2d.Resolve(msg.goal)
    }
    else {
      resolved.goal = new Point2d()
    }

    if (msg.search_time !== undefined) {
      resolved.search_time = msg.search_time;
    }
    else {
      resolved.search_time = 0.0
    }

    if (msg.solved !== undefined) {
      resolved.solved = msg.solved;
    }
    else {
      resolved.solved = false
    }

    if (msg.updated !== undefined) {
      resolved.updated = msg.updated;
    }
    else {
      resolved.updated = false
    }

    return resolved;
    }
};

module.exports = PathPlan;
