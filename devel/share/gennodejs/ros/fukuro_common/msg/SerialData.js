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
let DribblerControl = require('./DribblerControl.js');

//-----------------------------------------------------------

class SerialData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor = null;
      this.kecepatan = null;
      this.motor_brake = null;
      this.kick = null;
    }
    else {
      if (initObj.hasOwnProperty('motor')) {
        this.motor = initObj.motor
      }
      else {
        this.motor = new MotorVel();
      }
      if (initObj.hasOwnProperty('kecepatan')) {
        this.kecepatan = initObj.kecepatan
      }
      else {
        this.kecepatan = new DribblerControl();
      }
      if (initObj.hasOwnProperty('motor_brake')) {
        this.motor_brake = initObj.motor_brake
      }
      else {
        this.motor_brake = false;
      }
      if (initObj.hasOwnProperty('kick')) {
        this.kick = initObj.kick
      }
      else {
        this.kick = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SerialData
    // Serialize message field [motor]
    bufferOffset = MotorVel.serialize(obj.motor, buffer, bufferOffset);
    // Serialize message field [kecepatan]
    bufferOffset = DribblerControl.serialize(obj.kecepatan, buffer, bufferOffset);
    // Serialize message field [motor_brake]
    bufferOffset = _serializer.bool(obj.motor_brake, buffer, bufferOffset);
    // Serialize message field [kick]
    bufferOffset = _serializer.int8(obj.kick, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialData
    let len;
    let data = new SerialData(null);
    // Deserialize message field [motor]
    data.motor = MotorVel.deserialize(buffer, bufferOffset);
    // Deserialize message field [kecepatan]
    data.kecepatan = DribblerControl.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor_brake]
    data.motor_brake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [kick]
    data.kick = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/SerialData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e79ea646426556a7d54f50fe79c0de3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorVel motor
    DribblerControl kecepatan
    bool motor_brake
    int8 kick
    ================================================================================
    MSG: fukuro_common/MotorVel
    float32 m1
    float32 m2
    float32 m3
    ================================================================================
    MSG: fukuro_common/DribblerControl
    uint8 dir_in
    float32 speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SerialData(null);
    if (msg.motor !== undefined) {
      resolved.motor = MotorVel.Resolve(msg.motor)
    }
    else {
      resolved.motor = new MotorVel()
    }

    if (msg.kecepatan !== undefined) {
      resolved.kecepatan = DribblerControl.Resolve(msg.kecepatan)
    }
    else {
      resolved.kecepatan = new DribblerControl()
    }

    if (msg.motor_brake !== undefined) {
      resolved.motor_brake = msg.motor_brake;
    }
    else {
      resolved.motor_brake = false
    }

    if (msg.kick !== undefined) {
      resolved.kick = msg.kick;
    }
    else {
      resolved.kick = 0
    }

    return resolved;
    }
};

module.exports = SerialData;
