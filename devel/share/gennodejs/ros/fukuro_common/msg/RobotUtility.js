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

class RobotUtility {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ball_engage = null;
      this.collision = null;
      this.ready_kick = null;
    }
    else {
      if (initObj.hasOwnProperty('ball_engage')) {
        this.ball_engage = initObj.ball_engage
      }
      else {
        this.ball_engage = false;
      }
      if (initObj.hasOwnProperty('collision')) {
        this.collision = initObj.collision
      }
      else {
        this.collision = false;
      }
      if (initObj.hasOwnProperty('ready_kick')) {
        this.ready_kick = initObj.ready_kick
      }
      else {
        this.ready_kick = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotUtility
    // Serialize message field [ball_engage]
    bufferOffset = _serializer.bool(obj.ball_engage, buffer, bufferOffset);
    // Serialize message field [collision]
    bufferOffset = _serializer.bool(obj.collision, buffer, bufferOffset);
    // Serialize message field [ready_kick]
    bufferOffset = _serializer.bool(obj.ready_kick, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotUtility
    let len;
    let data = new RobotUtility(null);
    // Deserialize message field [ball_engage]
    data.ball_engage = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [collision]
    data.collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ready_kick]
    data.ready_kick = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/RobotUtility';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '06d17b852ebfd0c52f93f85e39a6a1ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ball_engage
    bool collision
    bool ready_kick
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotUtility(null);
    if (msg.ball_engage !== undefined) {
      resolved.ball_engage = msg.ball_engage;
    }
    else {
      resolved.ball_engage = false
    }

    if (msg.collision !== undefined) {
      resolved.collision = msg.collision;
    }
    else {
      resolved.collision = false
    }

    if (msg.ready_kick !== undefined) {
      resolved.ready_kick = msg.ready_kick;
    }
    else {
      resolved.ready_kick = false
    }

    return resolved;
    }
};

module.exports = RobotUtility;
