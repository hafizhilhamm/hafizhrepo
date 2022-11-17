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

class Localization {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.estimate_pos = null;
      this.estimate_pos_descrete = null;
      this.particles = null;
      this.best_estimation = null;
      this.weights = null;
      this.best_estimation_weight = null;
      this.grid_size = null;
    }
    else {
      if (initObj.hasOwnProperty('estimate_pos')) {
        this.estimate_pos = initObj.estimate_pos
      }
      else {
        this.estimate_pos = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('estimate_pos_descrete')) {
        this.estimate_pos_descrete = initObj.estimate_pos_descrete
      }
      else {
        this.estimate_pos_descrete = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('particles')) {
        this.particles = initObj.particles
      }
      else {
        this.particles = [];
      }
      if (initObj.hasOwnProperty('best_estimation')) {
        this.best_estimation = initObj.best_estimation
      }
      else {
        this.best_estimation = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('weights')) {
        this.weights = initObj.weights
      }
      else {
        this.weights = [];
      }
      if (initObj.hasOwnProperty('best_estimation_weight')) {
        this.best_estimation_weight = initObj.best_estimation_weight
      }
      else {
        this.best_estimation_weight = 0.0;
      }
      if (initObj.hasOwnProperty('grid_size')) {
        this.grid_size = initObj.grid_size
      }
      else {
        this.grid_size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Localization
    // Serialize message field [estimate_pos]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.estimate_pos, buffer, bufferOffset);
    // Serialize message field [estimate_pos_descrete]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.estimate_pos_descrete, buffer, bufferOffset);
    // Serialize message field [particles]
    // Serialize the length for message field [particles]
    bufferOffset = _serializer.uint32(obj.particles.length, buffer, bufferOffset);
    obj.particles.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [best_estimation]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.best_estimation, buffer, bufferOffset);
    // Serialize message field [weights]
    bufferOffset = _arraySerializer.float64(obj.weights, buffer, bufferOffset, null);
    // Serialize message field [best_estimation_weight]
    bufferOffset = _serializer.float64(obj.best_estimation_weight, buffer, bufferOffset);
    // Serialize message field [grid_size]
    bufferOffset = _serializer.int32(obj.grid_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Localization
    let len;
    let data = new Localization(null);
    // Deserialize message field [estimate_pos]
    data.estimate_pos = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [estimate_pos_descrete]
    data.estimate_pos_descrete = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [particles]
    // Deserialize array length for message field [particles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.particles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.particles[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [best_estimation]
    data.best_estimation = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [weights]
    data.weights = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [best_estimation_weight]
    data.best_estimation_weight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [grid_size]
    data.grid_size = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.particles.length;
    length += 8 * object.weights.length;
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/Localization';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd25fba6248365fe1c093e492c489b9fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose2D estimate_pos
    geometry_msgs/Pose2D estimate_pos_descrete
    geometry_msgs/Pose2D[] particles
    geometry_msgs/Pose2D best_estimation
    float64[] weights
    float64 best_estimation_weight
    int32 grid_size
    
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
    const resolved = new Localization(null);
    if (msg.estimate_pos !== undefined) {
      resolved.estimate_pos = geometry_msgs.msg.Pose2D.Resolve(msg.estimate_pos)
    }
    else {
      resolved.estimate_pos = new geometry_msgs.msg.Pose2D()
    }

    if (msg.estimate_pos_descrete !== undefined) {
      resolved.estimate_pos_descrete = geometry_msgs.msg.Pose2D.Resolve(msg.estimate_pos_descrete)
    }
    else {
      resolved.estimate_pos_descrete = new geometry_msgs.msg.Pose2D()
    }

    if (msg.particles !== undefined) {
      resolved.particles = new Array(msg.particles.length);
      for (let i = 0; i < resolved.particles.length; ++i) {
        resolved.particles[i] = geometry_msgs.msg.Pose2D.Resolve(msg.particles[i]);
      }
    }
    else {
      resolved.particles = []
    }

    if (msg.best_estimation !== undefined) {
      resolved.best_estimation = geometry_msgs.msg.Pose2D.Resolve(msg.best_estimation)
    }
    else {
      resolved.best_estimation = new geometry_msgs.msg.Pose2D()
    }

    if (msg.weights !== undefined) {
      resolved.weights = msg.weights;
    }
    else {
      resolved.weights = []
    }

    if (msg.best_estimation_weight !== undefined) {
      resolved.best_estimation_weight = msg.best_estimation_weight;
    }
    else {
      resolved.best_estimation_weight = 0.0
    }

    if (msg.grid_size !== undefined) {
      resolved.grid_size = msg.grid_size;
    }
    else {
      resolved.grid_size = 0
    }

    return resolved;
    }
};

module.exports = Localization;
