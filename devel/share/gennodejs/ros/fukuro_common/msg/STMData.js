// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorVel = require('./MotorVel.js');
let RobotVel = require('./RobotVel.js');

//-----------------------------------------------------------

class STMData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.encoder = null;
      this.freeenc = null;
      this.ready_kick = null;
      this.ir = null;
      this.garis1 = null;
      this.garis2 = null;
      this.garis3 = null;
      this.garis4 = null;
    }
    else {
      if (initObj.hasOwnProperty('encoder')) {
        this.encoder = initObj.encoder
      }
      else {
        this.encoder = new MotorVel();
      }
      if (initObj.hasOwnProperty('freeenc')) {
        this.freeenc = initObj.freeenc
      }
      else {
        this.freeenc = new RobotVel();
      }
      if (initObj.hasOwnProperty('ready_kick')) {
        this.ready_kick = initObj.ready_kick
      }
      else {
        this.ready_kick = false;
      }
      if (initObj.hasOwnProperty('ir')) {
        this.ir = initObj.ir
      }
      else {
        this.ir = false;
      }
      if (initObj.hasOwnProperty('garis1')) {
        this.garis1 = initObj.garis1
      }
      else {
        this.garis1 = false;
      }
      if (initObj.hasOwnProperty('garis2')) {
        this.garis2 = initObj.garis2
      }
      else {
        this.garis2 = false;
      }
      if (initObj.hasOwnProperty('garis3')) {
        this.garis3 = initObj.garis3
      }
      else {
        this.garis3 = false;
      }
      if (initObj.hasOwnProperty('garis4')) {
        this.garis4 = initObj.garis4
      }
      else {
        this.garis4 = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type STMData
    // Serialize message field [encoder]
    bufferOffset = MotorVel.serialize(obj.encoder, buffer, bufferOffset);
    // Serialize message field [freeenc]
    bufferOffset = RobotVel.serialize(obj.freeenc, buffer, bufferOffset);
    // Serialize message field [ready_kick]
    bufferOffset = _serializer.bool(obj.ready_kick, buffer, bufferOffset);
    // Serialize message field [ir]
    bufferOffset = _serializer.bool(obj.ir, buffer, bufferOffset);
    // Serialize message field [garis1]
    bufferOffset = _serializer.bool(obj.garis1, buffer, bufferOffset);
    // Serialize message field [garis2]
    bufferOffset = _serializer.bool(obj.garis2, buffer, bufferOffset);
    // Serialize message field [garis3]
    bufferOffset = _serializer.bool(obj.garis3, buffer, bufferOffset);
    // Serialize message field [garis4]
    bufferOffset = _serializer.bool(obj.garis4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type STMData
    let len;
    let data = new STMData(null);
    // Deserialize message field [encoder]
    data.encoder = MotorVel.deserialize(buffer, bufferOffset);
    // Deserialize message field [freeenc]
    data.freeenc = RobotVel.deserialize(buffer, bufferOffset);
    // Deserialize message field [ready_kick]
    data.ready_kick = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ir]
    data.ir = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [garis1]
    data.garis1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [garis2]
    data.garis2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [garis3]
    data.garis3 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [garis4]
    data.garis4 = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/STMData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f74160987d11b971db5bf3af08f3ce7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorVel encoder
    RobotVel freeenc
    bool ready_kick
    bool ir
    bool garis1
    bool garis2
    bool garis3
    bool garis4
    ================================================================================
    MSG: fukuro_common/MotorVel
    float32 m1
    float32 m2
    float32 m3
    ================================================================================
    MSG: fukuro_common/RobotVel
    float32 free1
    float32 free2
    float32 free3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new STMData(null);
    if (msg.encoder !== undefined) {
      resolved.encoder = MotorVel.Resolve(msg.encoder)
    }
    else {
      resolved.encoder = new MotorVel()
    }

    if (msg.freeenc !== undefined) {
      resolved.freeenc = RobotVel.Resolve(msg.freeenc)
    }
    else {
      resolved.freeenc = new RobotVel()
    }

    if (msg.ready_kick !== undefined) {
      resolved.ready_kick = msg.ready_kick;
    }
    else {
      resolved.ready_kick = false
    }

    if (msg.ir !== undefined) {
      resolved.ir = msg.ir;
    }
    else {
      resolved.ir = false
    }

    if (msg.garis1 !== undefined) {
      resolved.garis1 = msg.garis1;
    }
    else {
      resolved.garis1 = false
    }

    if (msg.garis2 !== undefined) {
      resolved.garis2 = msg.garis2;
    }
    else {
      resolved.garis2 = false
    }

    if (msg.garis3 !== undefined) {
      resolved.garis3 = msg.garis3;
    }
    else {
      resolved.garis3 = false
    }

    if (msg.garis4 !== undefined) {
      resolved.garis4 = msg.garis4;
    }
    else {
      resolved.garis4 = false
    }

    return resolved;
    }
};

module.exports = STMData;
