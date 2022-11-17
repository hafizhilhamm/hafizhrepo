// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Encoder = require('./Encoder.js');
let PWM = require('./PWM.js');
let Compass = require('./Compass.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class HWController {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.encoder = null;
      this.freewheel = null;
      this.pwm = null;
      this.compass = null;
      this.ir = null;
      this.vel = null;
      this.vel_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('encoder')) {
        this.encoder = initObj.encoder
      }
      else {
        this.encoder = new Encoder();
      }
      if (initObj.hasOwnProperty('freewheel')) {
        this.freewheel = initObj.freewheel
      }
      else {
        this.freewheel = new Encoder();
      }
      if (initObj.hasOwnProperty('pwm')) {
        this.pwm = initObj.pwm
      }
      else {
        this.pwm = new PWM();
      }
      if (initObj.hasOwnProperty('compass')) {
        this.compass = initObj.compass
      }
      else {
        this.compass = new Compass();
      }
      if (initObj.hasOwnProperty('ir')) {
        this.ir = initObj.ir
      }
      else {
        this.ir = 0;
      }
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('vel_cmd')) {
        this.vel_cmd = initObj.vel_cmd
      }
      else {
        this.vel_cmd = new geometry_msgs.msg.Pose2D();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWController
    // Serialize message field [encoder]
    bufferOffset = Encoder.serialize(obj.encoder, buffer, bufferOffset);
    // Serialize message field [freewheel]
    bufferOffset = Encoder.serialize(obj.freewheel, buffer, bufferOffset);
    // Serialize message field [pwm]
    bufferOffset = PWM.serialize(obj.pwm, buffer, bufferOffset);
    // Serialize message field [compass]
    bufferOffset = Compass.serialize(obj.compass, buffer, bufferOffset);
    // Serialize message field [ir]
    bufferOffset = _serializer.int8(obj.ir, buffer, bufferOffset);
    // Serialize message field [vel]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [vel_cmd]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.vel_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWController
    let len;
    let data = new HWController(null);
    // Deserialize message field [encoder]
    data.encoder = Encoder.deserialize(buffer, bufferOffset);
    // Deserialize message field [freewheel]
    data.freewheel = Encoder.deserialize(buffer, bufferOffset);
    // Deserialize message field [pwm]
    data.pwm = PWM.deserialize(buffer, bufferOffset);
    // Deserialize message field [compass]
    data.compass = Compass.deserialize(buffer, bufferOffset);
    // Deserialize message field [ir]
    data.ir = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [vel]
    data.vel = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_cmd]
    data.vel_cmd = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 105;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/HWController';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b17edd995ef9a46dfd3ca5601a27eaf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Encoder encoder
    Encoder freewheel
    PWM pwm
    Compass compass
    int8 ir
    geometry_msgs/Pose2D vel
    geometry_msgs/Pose2D vel_cmd
    ================================================================================
    MSG: fukuro_common/Encoder
    int32 m1
    int32 m2
    int32 m3
    ================================================================================
    MSG: fukuro_common/PWM
    float64 m1
    float64 m2
    float64 m3
    ================================================================================
    MSG: fukuro_common/Compass
    float64 cmps
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
    const resolved = new HWController(null);
    if (msg.encoder !== undefined) {
      resolved.encoder = Encoder.Resolve(msg.encoder)
    }
    else {
      resolved.encoder = new Encoder()
    }

    if (msg.freewheel !== undefined) {
      resolved.freewheel = Encoder.Resolve(msg.freewheel)
    }
    else {
      resolved.freewheel = new Encoder()
    }

    if (msg.pwm !== undefined) {
      resolved.pwm = PWM.Resolve(msg.pwm)
    }
    else {
      resolved.pwm = new PWM()
    }

    if (msg.compass !== undefined) {
      resolved.compass = Compass.Resolve(msg.compass)
    }
    else {
      resolved.compass = new Compass()
    }

    if (msg.ir !== undefined) {
      resolved.ir = msg.ir;
    }
    else {
      resolved.ir = 0
    }

    if (msg.vel !== undefined) {
      resolved.vel = geometry_msgs.msg.Pose2D.Resolve(msg.vel)
    }
    else {
      resolved.vel = new geometry_msgs.msg.Pose2D()
    }

    if (msg.vel_cmd !== undefined) {
      resolved.vel_cmd = geometry_msgs.msg.Pose2D.Resolve(msg.vel_cmd)
    }
    else {
      resolved.vel_cmd = new geometry_msgs.msg.Pose2D()
    }

    return resolved;
    }
};

module.exports = HWController;
