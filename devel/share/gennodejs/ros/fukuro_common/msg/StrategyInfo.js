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

class StrategyInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strategy_state = null;
      this.role = null;
      this.option = null;
      this.ball_passed = null;
      this.ready_receive = null;
    }
    else {
      if (initObj.hasOwnProperty('strategy_state')) {
        this.strategy_state = initObj.strategy_state
      }
      else {
        this.strategy_state = '';
      }
      if (initObj.hasOwnProperty('role')) {
        this.role = initObj.role
      }
      else {
        this.role = '';
      }
      if (initObj.hasOwnProperty('option')) {
        this.option = initObj.option
      }
      else {
        this.option = '';
      }
      if (initObj.hasOwnProperty('ball_passed')) {
        this.ball_passed = initObj.ball_passed
      }
      else {
        this.ball_passed = false;
      }
      if (initObj.hasOwnProperty('ready_receive')) {
        this.ready_receive = initObj.ready_receive
      }
      else {
        this.ready_receive = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StrategyInfo
    // Serialize message field [strategy_state]
    bufferOffset = _serializer.string(obj.strategy_state, buffer, bufferOffset);
    // Serialize message field [role]
    bufferOffset = _serializer.string(obj.role, buffer, bufferOffset);
    // Serialize message field [option]
    bufferOffset = _serializer.string(obj.option, buffer, bufferOffset);
    // Serialize message field [ball_passed]
    bufferOffset = _serializer.bool(obj.ball_passed, buffer, bufferOffset);
    // Serialize message field [ready_receive]
    bufferOffset = _serializer.bool(obj.ready_receive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StrategyInfo
    let len;
    let data = new StrategyInfo(null);
    // Deserialize message field [strategy_state]
    data.strategy_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [role]
    data.role = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [option]
    data.option = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ball_passed]
    data.ball_passed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ready_receive]
    data.ready_receive = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.strategy_state);
    length += _getByteLength(object.role);
    length += _getByteLength(object.option);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/StrategyInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b91c76e9e4337807ddef2cd407b15d2a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string strategy_state
    string role
    string option
    bool ball_passed
    bool ready_receive
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StrategyInfo(null);
    if (msg.strategy_state !== undefined) {
      resolved.strategy_state = msg.strategy_state;
    }
    else {
      resolved.strategy_state = ''
    }

    if (msg.role !== undefined) {
      resolved.role = msg.role;
    }
    else {
      resolved.role = ''
    }

    if (msg.option !== undefined) {
      resolved.option = msg.option;
    }
    else {
      resolved.option = ''
    }

    if (msg.ball_passed !== undefined) {
      resolved.ball_passed = msg.ball_passed;
    }
    else {
      resolved.ball_passed = false
    }

    if (msg.ready_receive !== undefined) {
      resolved.ready_receive = msg.ready_receive;
    }
    else {
      resolved.ready_receive = false
    }

    return resolved;
    }
};

module.exports = StrategyInfo;
