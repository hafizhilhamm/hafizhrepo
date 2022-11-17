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

class Teammates {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robotnumber = null;
      this.pose = null;
      this.available = null;
      this.behavior = null;
      this.state = null;
      this.isConnected = null;
      this.isManualPositioning = null;
      this.isBallOwn = null;
      this.pass_ball = null;
      this.receive_ball = null;
    }
    else {
      if (initObj.hasOwnProperty('robotnumber')) {
        this.robotnumber = initObj.robotnumber
      }
      else {
        this.robotnumber = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = [];
      }
      if (initObj.hasOwnProperty('behavior')) {
        this.behavior = initObj.behavior
      }
      else {
        this.behavior = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('isConnected')) {
        this.isConnected = initObj.isConnected
      }
      else {
        this.isConnected = false;
      }
      if (initObj.hasOwnProperty('isManualPositioning')) {
        this.isManualPositioning = initObj.isManualPositioning
      }
      else {
        this.isManualPositioning = false;
      }
      if (initObj.hasOwnProperty('isBallOwn')) {
        this.isBallOwn = initObj.isBallOwn
      }
      else {
        this.isBallOwn = false;
      }
      if (initObj.hasOwnProperty('pass_ball')) {
        this.pass_ball = initObj.pass_ball
      }
      else {
        this.pass_ball = [];
      }
      if (initObj.hasOwnProperty('receive_ball')) {
        this.receive_ball = initObj.receive_ball
      }
      else {
        this.receive_ball = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Teammates
    // Serialize message field [robotnumber]
    bufferOffset = _serializer.int32(obj.robotnumber, buffer, bufferOffset);
    // Serialize message field [pose]
    // Serialize the length for message field [pose]
    bufferOffset = _serializer.uint32(obj.pose.length, buffer, bufferOffset);
    obj.pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [available]
    bufferOffset = _arraySerializer.bool(obj.available, buffer, bufferOffset, null);
    // Serialize message field [behavior]
    bufferOffset = _serializer.int32(obj.behavior, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int32(obj.state, buffer, bufferOffset);
    // Serialize message field [isConnected]
    bufferOffset = _serializer.bool(obj.isConnected, buffer, bufferOffset);
    // Serialize message field [isManualPositioning]
    bufferOffset = _serializer.bool(obj.isManualPositioning, buffer, bufferOffset);
    // Serialize message field [isBallOwn]
    bufferOffset = _serializer.bool(obj.isBallOwn, buffer, bufferOffset);
    // Serialize message field [pass_ball]
    bufferOffset = _arraySerializer.bool(obj.pass_ball, buffer, bufferOffset, null);
    // Serialize message field [receive_ball]
    bufferOffset = _arraySerializer.bool(obj.receive_ball, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Teammates
    let len;
    let data = new Teammates(null);
    // Deserialize message field [robotnumber]
    data.robotnumber = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    // Deserialize array length for message field [pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [available]
    data.available = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [behavior]
    data.behavior = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isConnected]
    data.isConnected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isManualPositioning]
    data.isManualPositioning = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isBallOwn]
    data.isBallOwn = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pass_ball]
    data.pass_ball = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [receive_ball]
    data.receive_ball = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.pose.length;
    length += object.available.length;
    length += object.pass_ball.length;
    length += object.receive_ball.length;
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/Teammates';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d9d85ad8ed32eac7013d69f18ea4e63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 robotnumber
    geometry_msgs/Pose2D[] pose
    bool[] available
    int32 behavior
    int32 state
    bool isConnected
    bool isManualPositioning
    bool isBallOwn
    bool[] pass_ball
    bool[] receive_ball
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
    const resolved = new Teammates(null);
    if (msg.robotnumber !== undefined) {
      resolved.robotnumber = msg.robotnumber;
    }
    else {
      resolved.robotnumber = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = new Array(msg.pose.length);
      for (let i = 0; i < resolved.pose.length; ++i) {
        resolved.pose[i] = geometry_msgs.msg.Pose2D.Resolve(msg.pose[i]);
      }
    }
    else {
      resolved.pose = []
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = []
    }

    if (msg.behavior !== undefined) {
      resolved.behavior = msg.behavior;
    }
    else {
      resolved.behavior = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.isConnected !== undefined) {
      resolved.isConnected = msg.isConnected;
    }
    else {
      resolved.isConnected = false
    }

    if (msg.isManualPositioning !== undefined) {
      resolved.isManualPositioning = msg.isManualPositioning;
    }
    else {
      resolved.isManualPositioning = false
    }

    if (msg.isBallOwn !== undefined) {
      resolved.isBallOwn = msg.isBallOwn;
    }
    else {
      resolved.isBallOwn = false
    }

    if (msg.pass_ball !== undefined) {
      resolved.pass_ball = msg.pass_ball;
    }
    else {
      resolved.pass_ball = []
    }

    if (msg.receive_ball !== undefined) {
      resolved.receive_ball = msg.receive_ball;
    }
    else {
      resolved.receive_ball = []
    }

    return resolved;
    }
};

module.exports = Teammates;
