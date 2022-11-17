// Auto-generated. Do not edit!

// (in-package fukuro_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StrategyServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strategy_state = null;
      this.strategy_option = null;
      this.role = null;
      this.obs1_pos = null;
      this.obs2_pos = null;
      this.kiper_pos = null;
      this.option = null;
      this.home_pos = null;
      this.kick_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('strategy_state')) {
        this.strategy_state = initObj.strategy_state
      }
      else {
        this.strategy_state = '';
      }
      if (initObj.hasOwnProperty('strategy_option')) {
        this.strategy_option = initObj.strategy_option
      }
      else {
        this.strategy_option = '';
      }
      if (initObj.hasOwnProperty('role')) {
        this.role = initObj.role
      }
      else {
        this.role = '';
      }
      if (initObj.hasOwnProperty('obs1_pos')) {
        this.obs1_pos = initObj.obs1_pos
      }
      else {
        this.obs1_pos = 0;
      }
      if (initObj.hasOwnProperty('obs2_pos')) {
        this.obs2_pos = initObj.obs2_pos
      }
      else {
        this.obs2_pos = 0;
      }
      if (initObj.hasOwnProperty('kiper_pos')) {
        this.kiper_pos = initObj.kiper_pos
      }
      else {
        this.kiper_pos = 0;
      }
      if (initObj.hasOwnProperty('option')) {
        this.option = initObj.option
      }
      else {
        this.option = '';
      }
      if (initObj.hasOwnProperty('home_pos')) {
        this.home_pos = initObj.home_pos
      }
      else {
        this.home_pos = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('kick_pos')) {
        this.kick_pos = initObj.kick_pos
      }
      else {
        this.kick_pos = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StrategyServiceRequest
    // Serialize message field [strategy_state]
    bufferOffset = _serializer.string(obj.strategy_state, buffer, bufferOffset);
    // Serialize message field [strategy_option]
    bufferOffset = _serializer.string(obj.strategy_option, buffer, bufferOffset);
    // Serialize message field [role]
    bufferOffset = _serializer.string(obj.role, buffer, bufferOffset);
    // Serialize message field [obs1_pos]
    bufferOffset = _serializer.int32(obj.obs1_pos, buffer, bufferOffset);
    // Serialize message field [obs2_pos]
    bufferOffset = _serializer.int32(obj.obs2_pos, buffer, bufferOffset);
    // Serialize message field [kiper_pos]
    bufferOffset = _serializer.int32(obj.kiper_pos, buffer, bufferOffset);
    // Serialize message field [option]
    bufferOffset = _serializer.string(obj.option, buffer, bufferOffset);
    // Serialize message field [home_pos]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.home_pos, buffer, bufferOffset);
    // Serialize message field [kick_pos]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.kick_pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StrategyServiceRequest
    let len;
    let data = new StrategyServiceRequest(null);
    // Deserialize message field [strategy_state]
    data.strategy_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [strategy_option]
    data.strategy_option = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [role]
    data.role = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [obs1_pos]
    data.obs1_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [obs2_pos]
    data.obs2_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [kiper_pos]
    data.kiper_pos = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [option]
    data.option = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [home_pos]
    data.home_pos = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [kick_pos]
    data.kick_pos = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.strategy_state);
    length += _getByteLength(object.strategy_option);
    length += _getByteLength(object.role);
    length += _getByteLength(object.option);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/StrategyServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36813d2bf1dd74d02dfcbc81194a6945';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string strategy_state
    string strategy_option
    string role
    int32 obs1_pos
    int32 obs2_pos
    int32 kiper_pos
    string option
    geometry_msgs/Pose2D home_pos
    geometry_msgs/Pose2D kick_pos
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StrategyServiceRequest(null);
    if (msg.strategy_state !== undefined) {
      resolved.strategy_state = msg.strategy_state;
    }
    else {
      resolved.strategy_state = ''
    }

    if (msg.strategy_option !== undefined) {
      resolved.strategy_option = msg.strategy_option;
    }
    else {
      resolved.strategy_option = ''
    }

    if (msg.role !== undefined) {
      resolved.role = msg.role;
    }
    else {
      resolved.role = ''
    }

    if (msg.obs1_pos !== undefined) {
      resolved.obs1_pos = msg.obs1_pos;
    }
    else {
      resolved.obs1_pos = 0
    }

    if (msg.obs2_pos !== undefined) {
      resolved.obs2_pos = msg.obs2_pos;
    }
    else {
      resolved.obs2_pos = 0
    }

    if (msg.kiper_pos !== undefined) {
      resolved.kiper_pos = msg.kiper_pos;
    }
    else {
      resolved.kiper_pos = 0
    }

    if (msg.option !== undefined) {
      resolved.option = msg.option;
    }
    else {
      resolved.option = ''
    }

    if (msg.home_pos !== undefined) {
      resolved.home_pos = geometry_msgs.msg.Pose2D.Resolve(msg.home_pos)
    }
    else {
      resolved.home_pos = new geometry_msgs.msg.Pose2D()
    }

    if (msg.kick_pos !== undefined) {
      resolved.kick_pos = geometry_msgs.msg.Pose2D.Resolve(msg.kick_pos)
    }
    else {
      resolved.kick_pos = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

class StrategyServiceResponse {
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
    // Serializes a message object of type StrategyServiceResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.uint8(obj.ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StrategyServiceResponse
    let len;
    let data = new StrategyServiceResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/StrategyServiceResponse';
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
    const resolved = new StrategyServiceResponse(null);
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
  Request: StrategyServiceRequest,
  Response: StrategyServiceResponse,
  md5sum() { return '2db2786a5ed05eb6930ecf6644f9e863'; },
  datatype() { return 'fukuro_common/StrategyService'; }
};
