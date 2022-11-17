// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_pose = null;
      this.option = null;
      this.control = null;
      this.dribbler_speed = null;
      this.plan = null;
      this.approach_ball = null;
      this.motor_brake = null;
      this.absolute_move = null;
    }
    else {
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('option')) {
        this.option = initObj.option
      }
      else {
        this.option = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('control')) {
        this.control = initObj.control
      }
      else {
        this.control = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('dribbler_speed')) {
        this.dribbler_speed = initObj.dribbler_speed
      }
      else {
        this.dribbler_speed = 0.0;
      }
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = false;
      }
      if (initObj.hasOwnProperty('approach_ball')) {
        this.approach_ball = initObj.approach_ball
      }
      else {
        this.approach_ball = false;
      }
      if (initObj.hasOwnProperty('motor_brake')) {
        this.motor_brake = initObj.motor_brake
      }
      else {
        this.motor_brake = false;
      }
      if (initObj.hasOwnProperty('absolute_move')) {
        this.absolute_move = initObj.absolute_move
      }
      else {
        this.absolute_move = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotControl
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.target_pose, buffer, bufferOffset);
    // Serialize message field [option]
    bufferOffset = std_msgs.msg.String.serialize(obj.option, buffer, bufferOffset);
    // Serialize message field [control]
    bufferOffset = std_msgs.msg.String.serialize(obj.control, buffer, bufferOffset);
    // Serialize message field [dribbler_speed]
    bufferOffset = _serializer.float64(obj.dribbler_speed, buffer, bufferOffset);
    // Serialize message field [plan]
    bufferOffset = _serializer.bool(obj.plan, buffer, bufferOffset);
    // Serialize message field [approach_ball]
    bufferOffset = _serializer.bool(obj.approach_ball, buffer, bufferOffset);
    // Serialize message field [motor_brake]
    bufferOffset = _serializer.bool(obj.motor_brake, buffer, bufferOffset);
    // Serialize message field [absolute_move]
    bufferOffset = _serializer.bool(obj.absolute_move, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotControl
    let len;
    let data = new RobotControl(null);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [option]
    data.option = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [control]
    data.control = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [dribbler_speed]
    data.dribbler_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [plan]
    data.plan = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [approach_ball]
    data.approach_ball = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_brake]
    data.motor_brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [absolute_move]
    data.absolute_move = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.option);
    length += std_msgs.msg.String.getMessageSize(object.control);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/RobotControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd1cd8f601a5db7d70afbd3196ead46cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D target_pose
    std_msgs/String option
    std_msgs/String control
    float64 dribbler_speed
    bool plan
    bool approach_ball
    bool motor_brake
    bool absolute_move
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
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotControl(null);
    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.Pose2D.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.Pose2D()
    }

    if (msg.option !== undefined) {
      resolved.option = std_msgs.msg.String.Resolve(msg.option)
    }
    else {
      resolved.option = new std_msgs.msg.String()
    }

    if (msg.control !== undefined) {
      resolved.control = std_msgs.msg.String.Resolve(msg.control)
    }
    else {
      resolved.control = new std_msgs.msg.String()
    }

    if (msg.dribbler_speed !== undefined) {
      resolved.dribbler_speed = msg.dribbler_speed;
    }
    else {
      resolved.dribbler_speed = 0.0
    }

    if (msg.plan !== undefined) {
      resolved.plan = msg.plan;
    }
    else {
      resolved.plan = false
    }

    if (msg.approach_ball !== undefined) {
      resolved.approach_ball = msg.approach_ball;
    }
    else {
      resolved.approach_ball = false
    }

    if (msg.motor_brake !== undefined) {
      resolved.motor_brake = msg.motor_brake;
    }
    else {
      resolved.motor_brake = false
    }

    if (msg.absolute_move !== undefined) {
      resolved.absolute_move = msg.absolute_move;
    }
    else {
      resolved.absolute_move = false
    }

    return resolved;
    }
};

module.exports = RobotControl;
