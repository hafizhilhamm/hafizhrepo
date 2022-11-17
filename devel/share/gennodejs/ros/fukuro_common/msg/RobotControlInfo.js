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

//-----------------------------------------------------------

class RobotControlInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_radius = null;
      this.error_angle = null;
      this.setpoint = null;
      this.plan = null;
    }
    else {
      if (initObj.hasOwnProperty('error_radius')) {
        this.error_radius = initObj.error_radius
      }
      else {
        this.error_radius = 0.0;
      }
      if (initObj.hasOwnProperty('error_angle')) {
        this.error_angle = initObj.error_angle
      }
      else {
        this.error_angle = 0.0;
      }
      if (initObj.hasOwnProperty('setpoint')) {
        this.setpoint = initObj.setpoint
      }
      else {
        this.setpoint = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('plan')) {
        this.plan = initObj.plan
      }
      else {
        this.plan = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotControlInfo
    // Serialize message field [error_radius]
    bufferOffset = _serializer.float64(obj.error_radius, buffer, bufferOffset);
    // Serialize message field [error_angle]
    bufferOffset = _serializer.float64(obj.error_angle, buffer, bufferOffset);
    // Serialize message field [setpoint]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.setpoint, buffer, bufferOffset);
    // Serialize message field [plan]
    bufferOffset = _serializer.bool(obj.plan, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotControlInfo
    let len;
    let data = new RobotControlInfo(null);
    // Deserialize message field [error_radius]
    data.error_radius = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error_angle]
    data.error_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [setpoint]
    data.setpoint = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [plan]
    data.plan = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/RobotControlInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d219701cbb4b4f70bacc052c397c3a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 error_radius
    float64 error_angle
    geometry_msgs/Pose2D setpoint
    bool plan
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
    const resolved = new RobotControlInfo(null);
    if (msg.error_radius !== undefined) {
      resolved.error_radius = msg.error_radius;
    }
    else {
      resolved.error_radius = 0.0
    }

    if (msg.error_angle !== undefined) {
      resolved.error_angle = msg.error_angle;
    }
    else {
      resolved.error_angle = 0.0
    }

    if (msg.setpoint !== undefined) {
      resolved.setpoint = geometry_msgs.msg.Pose2D.Resolve(msg.setpoint)
    }
    else {
      resolved.setpoint = new geometry_msgs.msg.Pose2D()
    }

    if (msg.plan !== undefined) {
      resolved.plan = msg.plan;
    }
    else {
      resolved.plan = false
    }

    return resolved;
    }
};

module.exports = RobotControlInfo;
