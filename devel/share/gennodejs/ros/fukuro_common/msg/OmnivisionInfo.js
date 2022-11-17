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

class OmnivisionInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.local_ball = null;
      this.ball_visible = null;
      this.local_obstacle = null;
      this.obs_visible = null;
      this.robot_friend_pos = null;
      this.friend_visible = null;
    }
    else {
      if (initObj.hasOwnProperty('local_ball')) {
        this.local_ball = initObj.local_ball
      }
      else {
        this.local_ball = new Point2d();
      }
      if (initObj.hasOwnProperty('ball_visible')) {
        this.ball_visible = initObj.ball_visible
      }
      else {
        this.ball_visible = false;
      }
      if (initObj.hasOwnProperty('local_obstacle')) {
        this.local_obstacle = initObj.local_obstacle
      }
      else {
        this.local_obstacle = new Point2d();
      }
      if (initObj.hasOwnProperty('obs_visible')) {
        this.obs_visible = initObj.obs_visible
      }
      else {
        this.obs_visible = false;
      }
      if (initObj.hasOwnProperty('robot_friend_pos')) {
        this.robot_friend_pos = initObj.robot_friend_pos
      }
      else {
        this.robot_friend_pos = new Point2d();
      }
      if (initObj.hasOwnProperty('friend_visible')) {
        this.friend_visible = initObj.friend_visible
      }
      else {
        this.friend_visible = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type OmnivisionInfo
    // Serialize message field [local_ball]
    bufferOffset = Point2d.serialize(obj.local_ball, buffer, bufferOffset);
    // Serialize message field [ball_visible]
    bufferOffset = _serializer.bool(obj.ball_visible, buffer, bufferOffset);
    // Serialize message field [local_obstacle]
    bufferOffset = Point2d.serialize(obj.local_obstacle, buffer, bufferOffset);
    // Serialize message field [obs_visible]
    bufferOffset = _serializer.bool(obj.obs_visible, buffer, bufferOffset);
    // Serialize message field [robot_friend_pos]
    bufferOffset = Point2d.serialize(obj.robot_friend_pos, buffer, bufferOffset);
    // Serialize message field [friend_visible]
    bufferOffset = _serializer.bool(obj.friend_visible, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type OmnivisionInfo
    let len;
    let data = new OmnivisionInfo(null);
    // Deserialize message field [local_ball]
    data.local_ball = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [ball_visible]
    data.ball_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [local_obstacle]
    data.local_obstacle = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [obs_visible]
    data.obs_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [robot_friend_pos]
    data.robot_friend_pos = Point2d.deserialize(buffer, bufferOffset);
    // Deserialize message field [friend_visible]
    data.friend_visible = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/OmnivisionInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fba85346654e08337110412dda45e35e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Point2d local_ball
    bool ball_visible
    Point2d local_obstacle
    bool obs_visible
    Point2d robot_friend_pos
    bool friend_visible
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
    const resolved = new OmnivisionInfo(null);
    if (msg.local_ball !== undefined) {
      resolved.local_ball = Point2d.Resolve(msg.local_ball)
    }
    else {
      resolved.local_ball = new Point2d()
    }

    if (msg.ball_visible !== undefined) {
      resolved.ball_visible = msg.ball_visible;
    }
    else {
      resolved.ball_visible = false
    }

    if (msg.local_obstacle !== undefined) {
      resolved.local_obstacle = Point2d.Resolve(msg.local_obstacle)
    }
    else {
      resolved.local_obstacle = new Point2d()
    }

    if (msg.obs_visible !== undefined) {
      resolved.obs_visible = msg.obs_visible;
    }
    else {
      resolved.obs_visible = false
    }

    if (msg.robot_friend_pos !== undefined) {
      resolved.robot_friend_pos = Point2d.Resolve(msg.robot_friend_pos)
    }
    else {
      resolved.robot_friend_pos = new Point2d()
    }

    if (msg.friend_visible !== undefined) {
      resolved.friend_visible = msg.friend_visible;
    }
    else {
      resolved.friend_visible = false
    }

    return resolved;
    }
};

module.exports = OmnivisionInfo;
