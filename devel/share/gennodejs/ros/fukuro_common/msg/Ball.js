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

class Ball {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ball_x = null;
      this.ball_y = null;
      this.is_visible = null;
    }
    else {
      if (initObj.hasOwnProperty('ball_x')) {
        this.ball_x = initObj.ball_x
      }
      else {
        this.ball_x = 0.0;
      }
      if (initObj.hasOwnProperty('ball_y')) {
        this.ball_y = initObj.ball_y
      }
      else {
        this.ball_y = 0.0;
      }
      if (initObj.hasOwnProperty('is_visible')) {
        this.is_visible = initObj.is_visible
      }
      else {
        this.is_visible = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ball
    // Serialize message field [ball_x]
    bufferOffset = _serializer.float64(obj.ball_x, buffer, bufferOffset);
    // Serialize message field [ball_y]
    bufferOffset = _serializer.float64(obj.ball_y, buffer, bufferOffset);
    // Serialize message field [is_visible]
    bufferOffset = _serializer.bool(obj.is_visible, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ball
    let len;
    let data = new Ball(null);
    // Deserialize message field [ball_x]
    data.ball_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ball_y]
    data.ball_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [is_visible]
    data.is_visible = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/Ball';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88ac6da9dfce2ccdcb4a5d2627e96b2f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 ball_x
    float64 ball_y
    bool is_visible
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ball(null);
    if (msg.ball_x !== undefined) {
      resolved.ball_x = msg.ball_x;
    }
    else {
      resolved.ball_x = 0.0
    }

    if (msg.ball_y !== undefined) {
      resolved.ball_y = msg.ball_y;
    }
    else {
      resolved.ball_y = 0.0
    }

    if (msg.is_visible !== undefined) {
      resolved.is_visible = msg.is_visible;
    }
    else {
      resolved.is_visible = false
    }

    return resolved;
    }
};

module.exports = Ball;
