// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VelCmd = require('./VelCmd.js');
let DribblerControl = require('./DribblerControl.js');
let MotorVel = require('./MotorVel.js');

//-----------------------------------------------------------

class HWControllerCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vel = null;
      this.dribbler = null;
      this.motor = null;
      this.kick = null;
      this.pwm_test = null;
      this.motor_brake = null;
    }
    else {
      if (initObj.hasOwnProperty('vel')) {
        this.vel = initObj.vel
      }
      else {
        this.vel = new VelCmd();
      }
      if (initObj.hasOwnProperty('dribbler')) {
        this.dribbler = initObj.dribbler
      }
      else {
        this.dribbler = new DribblerControl();
      }
      if (initObj.hasOwnProperty('motor')) {
        this.motor = initObj.motor
      }
      else {
        this.motor = new MotorVel();
      }
      if (initObj.hasOwnProperty('kick')) {
        this.kick = initObj.kick
      }
      else {
        this.kick = 0;
      }
      if (initObj.hasOwnProperty('pwm_test')) {
        this.pwm_test = initObj.pwm_test
      }
      else {
        this.pwm_test = false;
      }
      if (initObj.hasOwnProperty('motor_brake')) {
        this.motor_brake = initObj.motor_brake
      }
      else {
        this.motor_brake = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWControllerCommand
    // Serialize message field [vel]
    bufferOffset = VelCmd.serialize(obj.vel, buffer, bufferOffset);
    // Serialize message field [dribbler]
    bufferOffset = DribblerControl.serialize(obj.dribbler, buffer, bufferOffset);
    // Serialize message field [motor]
    bufferOffset = MotorVel.serialize(obj.motor, buffer, bufferOffset);
    // Serialize message field [kick]
    bufferOffset = _serializer.int32(obj.kick, buffer, bufferOffset);
    // Serialize message field [pwm_test]
    bufferOffset = _serializer.bool(obj.pwm_test, buffer, bufferOffset);
    // Serialize message field [motor_brake]
    bufferOffset = _serializer.bool(obj.motor_brake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWControllerCommand
    let len;
    let data = new HWControllerCommand(null);
    // Deserialize message field [vel]
    data.vel = VelCmd.deserialize(buffer, bufferOffset);
    // Deserialize message field [dribbler]
    data.dribbler = DribblerControl.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor]
    data.motor = MotorVel.deserialize(buffer, bufferOffset);
    // Deserialize message field [kick]
    data.kick = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pwm_test]
    data.pwm_test = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motor_brake]
    data.motor_brake = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 47;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/HWControllerCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8649b21cff79d6ff662fd81507c1f841';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VelCmd vel
    DribblerControl dribbler
    MotorVel motor
    int32 kick
    bool pwm_test
    bool motor_brake
    ================================================================================
    MSG: fukuro_common/VelCmd
    float64 vx
    float64 vy
    float64 w
    ================================================================================
    MSG: fukuro_common/DribblerControl
    uint8 dir_in
    float32 speed
    ================================================================================
    MSG: fukuro_common/MotorVel
    float32 m1
    float32 m2
    float32 m3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HWControllerCommand(null);
    if (msg.vel !== undefined) {
      resolved.vel = VelCmd.Resolve(msg.vel)
    }
    else {
      resolved.vel = new VelCmd()
    }

    if (msg.dribbler !== undefined) {
      resolved.dribbler = DribblerControl.Resolve(msg.dribbler)
    }
    else {
      resolved.dribbler = new DribblerControl()
    }

    if (msg.motor !== undefined) {
      resolved.motor = MotorVel.Resolve(msg.motor)
    }
    else {
      resolved.motor = new MotorVel()
    }

    if (msg.kick !== undefined) {
      resolved.kick = msg.kick;
    }
    else {
      resolved.kick = 0
    }

    if (msg.pwm_test !== undefined) {
      resolved.pwm_test = msg.pwm_test;
    }
    else {
      resolved.pwm_test = false
    }

    if (msg.motor_brake !== undefined) {
      resolved.motor_brake = msg.motor_brake;
    }
    else {
      resolved.motor_brake = false
    }

    return resolved;
    }
};

module.exports = HWControllerCommand;
