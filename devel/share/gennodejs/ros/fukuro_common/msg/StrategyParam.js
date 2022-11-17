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

class StrategyParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radius_dribble_auto_on = null;
      this.angle_dribble_auto_on = null;
      this.radius_mulai_dribble_bola = null;
      this.angle_mulai_dribble_bola = null;
      this.min_error_posisi_kick = null;
      this.min_error_sudut_kick = null;
      this.min_error_posisi_homing = null;
      this.min_error_sudut_homing = null;
      this.error_positioning = null;
      this.error_sudut_positioning = null;
      this.radius_mulai_kick_off = null;
      this.upper_saturate = null;
      this.lower_saturate = null;
      this.upper_saturate_engaged = null;
      this.lower_saturate_engaged = null;
      this.max_angle_saturate = null;
    }
    else {
      if (initObj.hasOwnProperty('radius_dribble_auto_on')) {
        this.radius_dribble_auto_on = initObj.radius_dribble_auto_on
      }
      else {
        this.radius_dribble_auto_on = 0.0;
      }
      if (initObj.hasOwnProperty('angle_dribble_auto_on')) {
        this.angle_dribble_auto_on = initObj.angle_dribble_auto_on
      }
      else {
        this.angle_dribble_auto_on = 0.0;
      }
      if (initObj.hasOwnProperty('radius_mulai_dribble_bola')) {
        this.radius_mulai_dribble_bola = initObj.radius_mulai_dribble_bola
      }
      else {
        this.radius_mulai_dribble_bola = 0.0;
      }
      if (initObj.hasOwnProperty('angle_mulai_dribble_bola')) {
        this.angle_mulai_dribble_bola = initObj.angle_mulai_dribble_bola
      }
      else {
        this.angle_mulai_dribble_bola = 0.0;
      }
      if (initObj.hasOwnProperty('min_error_posisi_kick')) {
        this.min_error_posisi_kick = initObj.min_error_posisi_kick
      }
      else {
        this.min_error_posisi_kick = 0.0;
      }
      if (initObj.hasOwnProperty('min_error_sudut_kick')) {
        this.min_error_sudut_kick = initObj.min_error_sudut_kick
      }
      else {
        this.min_error_sudut_kick = 0.0;
      }
      if (initObj.hasOwnProperty('min_error_posisi_homing')) {
        this.min_error_posisi_homing = initObj.min_error_posisi_homing
      }
      else {
        this.min_error_posisi_homing = 0.0;
      }
      if (initObj.hasOwnProperty('min_error_sudut_homing')) {
        this.min_error_sudut_homing = initObj.min_error_sudut_homing
      }
      else {
        this.min_error_sudut_homing = 0.0;
      }
      if (initObj.hasOwnProperty('error_positioning')) {
        this.error_positioning = initObj.error_positioning
      }
      else {
        this.error_positioning = 0.0;
      }
      if (initObj.hasOwnProperty('error_sudut_positioning')) {
        this.error_sudut_positioning = initObj.error_sudut_positioning
      }
      else {
        this.error_sudut_positioning = 0.0;
      }
      if (initObj.hasOwnProperty('radius_mulai_kick_off')) {
        this.radius_mulai_kick_off = initObj.radius_mulai_kick_off
      }
      else {
        this.radius_mulai_kick_off = 0.0;
      }
      if (initObj.hasOwnProperty('upper_saturate')) {
        this.upper_saturate = initObj.upper_saturate
      }
      else {
        this.upper_saturate = 0.0;
      }
      if (initObj.hasOwnProperty('lower_saturate')) {
        this.lower_saturate = initObj.lower_saturate
      }
      else {
        this.lower_saturate = 0.0;
      }
      if (initObj.hasOwnProperty('upper_saturate_engaged')) {
        this.upper_saturate_engaged = initObj.upper_saturate_engaged
      }
      else {
        this.upper_saturate_engaged = 0.0;
      }
      if (initObj.hasOwnProperty('lower_saturate_engaged')) {
        this.lower_saturate_engaged = initObj.lower_saturate_engaged
      }
      else {
        this.lower_saturate_engaged = 0.0;
      }
      if (initObj.hasOwnProperty('max_angle_saturate')) {
        this.max_angle_saturate = initObj.max_angle_saturate
      }
      else {
        this.max_angle_saturate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StrategyParam
    // Serialize message field [radius_dribble_auto_on]
    bufferOffset = _serializer.float32(obj.radius_dribble_auto_on, buffer, bufferOffset);
    // Serialize message field [angle_dribble_auto_on]
    bufferOffset = _serializer.float32(obj.angle_dribble_auto_on, buffer, bufferOffset);
    // Serialize message field [radius_mulai_dribble_bola]
    bufferOffset = _serializer.float32(obj.radius_mulai_dribble_bola, buffer, bufferOffset);
    // Serialize message field [angle_mulai_dribble_bola]
    bufferOffset = _serializer.float32(obj.angle_mulai_dribble_bola, buffer, bufferOffset);
    // Serialize message field [min_error_posisi_kick]
    bufferOffset = _serializer.float32(obj.min_error_posisi_kick, buffer, bufferOffset);
    // Serialize message field [min_error_sudut_kick]
    bufferOffset = _serializer.float32(obj.min_error_sudut_kick, buffer, bufferOffset);
    // Serialize message field [min_error_posisi_homing]
    bufferOffset = _serializer.float32(obj.min_error_posisi_homing, buffer, bufferOffset);
    // Serialize message field [min_error_sudut_homing]
    bufferOffset = _serializer.float32(obj.min_error_sudut_homing, buffer, bufferOffset);
    // Serialize message field [error_positioning]
    bufferOffset = _serializer.float32(obj.error_positioning, buffer, bufferOffset);
    // Serialize message field [error_sudut_positioning]
    bufferOffset = _serializer.float32(obj.error_sudut_positioning, buffer, bufferOffset);
    // Serialize message field [radius_mulai_kick_off]
    bufferOffset = _serializer.float32(obj.radius_mulai_kick_off, buffer, bufferOffset);
    // Serialize message field [upper_saturate]
    bufferOffset = _serializer.float32(obj.upper_saturate, buffer, bufferOffset);
    // Serialize message field [lower_saturate]
    bufferOffset = _serializer.float32(obj.lower_saturate, buffer, bufferOffset);
    // Serialize message field [upper_saturate_engaged]
    bufferOffset = _serializer.float32(obj.upper_saturate_engaged, buffer, bufferOffset);
    // Serialize message field [lower_saturate_engaged]
    bufferOffset = _serializer.float32(obj.lower_saturate_engaged, buffer, bufferOffset);
    // Serialize message field [max_angle_saturate]
    bufferOffset = _serializer.float32(obj.max_angle_saturate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StrategyParam
    let len;
    let data = new StrategyParam(null);
    // Deserialize message field [radius_dribble_auto_on]
    data.radius_dribble_auto_on = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_dribble_auto_on]
    data.angle_dribble_auto_on = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius_mulai_dribble_bola]
    data.radius_mulai_dribble_bola = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_mulai_dribble_bola]
    data.angle_mulai_dribble_bola = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_error_posisi_kick]
    data.min_error_posisi_kick = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_error_sudut_kick]
    data.min_error_sudut_kick = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_error_posisi_homing]
    data.min_error_posisi_homing = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_error_sudut_homing]
    data.min_error_sudut_homing = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_positioning]
    data.error_positioning = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [error_sudut_positioning]
    data.error_sudut_positioning = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [radius_mulai_kick_off]
    data.radius_mulai_kick_off = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [upper_saturate]
    data.upper_saturate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lower_saturate]
    data.lower_saturate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [upper_saturate_engaged]
    data.upper_saturate_engaged = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lower_saturate_engaged]
    data.lower_saturate_engaged = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_angle_saturate]
    data.max_angle_saturate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/StrategyParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '21766f045e3facf112f156a585dc8583';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 radius_dribble_auto_on
    float32 angle_dribble_auto_on
    float32 radius_mulai_dribble_bola
    float32 angle_mulai_dribble_bola
    float32 min_error_posisi_kick
    float32 min_error_sudut_kick
    float32 min_error_posisi_homing
    float32 min_error_sudut_homing
    float32 error_positioning
    float32 error_sudut_positioning
    float32 radius_mulai_kick_off
    float32 upper_saturate
    float32 lower_saturate
    float32 upper_saturate_engaged
    float32 lower_saturate_engaged
    float32 max_angle_saturate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StrategyParam(null);
    if (msg.radius_dribble_auto_on !== undefined) {
      resolved.radius_dribble_auto_on = msg.radius_dribble_auto_on;
    }
    else {
      resolved.radius_dribble_auto_on = 0.0
    }

    if (msg.angle_dribble_auto_on !== undefined) {
      resolved.angle_dribble_auto_on = msg.angle_dribble_auto_on;
    }
    else {
      resolved.angle_dribble_auto_on = 0.0
    }

    if (msg.radius_mulai_dribble_bola !== undefined) {
      resolved.radius_mulai_dribble_bola = msg.radius_mulai_dribble_bola;
    }
    else {
      resolved.radius_mulai_dribble_bola = 0.0
    }

    if (msg.angle_mulai_dribble_bola !== undefined) {
      resolved.angle_mulai_dribble_bola = msg.angle_mulai_dribble_bola;
    }
    else {
      resolved.angle_mulai_dribble_bola = 0.0
    }

    if (msg.min_error_posisi_kick !== undefined) {
      resolved.min_error_posisi_kick = msg.min_error_posisi_kick;
    }
    else {
      resolved.min_error_posisi_kick = 0.0
    }

    if (msg.min_error_sudut_kick !== undefined) {
      resolved.min_error_sudut_kick = msg.min_error_sudut_kick;
    }
    else {
      resolved.min_error_sudut_kick = 0.0
    }

    if (msg.min_error_posisi_homing !== undefined) {
      resolved.min_error_posisi_homing = msg.min_error_posisi_homing;
    }
    else {
      resolved.min_error_posisi_homing = 0.0
    }

    if (msg.min_error_sudut_homing !== undefined) {
      resolved.min_error_sudut_homing = msg.min_error_sudut_homing;
    }
    else {
      resolved.min_error_sudut_homing = 0.0
    }

    if (msg.error_positioning !== undefined) {
      resolved.error_positioning = msg.error_positioning;
    }
    else {
      resolved.error_positioning = 0.0
    }

    if (msg.error_sudut_positioning !== undefined) {
      resolved.error_sudut_positioning = msg.error_sudut_positioning;
    }
    else {
      resolved.error_sudut_positioning = 0.0
    }

    if (msg.radius_mulai_kick_off !== undefined) {
      resolved.radius_mulai_kick_off = msg.radius_mulai_kick_off;
    }
    else {
      resolved.radius_mulai_kick_off = 0.0
    }

    if (msg.upper_saturate !== undefined) {
      resolved.upper_saturate = msg.upper_saturate;
    }
    else {
      resolved.upper_saturate = 0.0
    }

    if (msg.lower_saturate !== undefined) {
      resolved.lower_saturate = msg.lower_saturate;
    }
    else {
      resolved.lower_saturate = 0.0
    }

    if (msg.upper_saturate_engaged !== undefined) {
      resolved.upper_saturate_engaged = msg.upper_saturate_engaged;
    }
    else {
      resolved.upper_saturate_engaged = 0.0
    }

    if (msg.lower_saturate_engaged !== undefined) {
      resolved.lower_saturate_engaged = msg.lower_saturate_engaged;
    }
    else {
      resolved.lower_saturate_engaged = 0.0
    }

    if (msg.max_angle_saturate !== undefined) {
      resolved.max_angle_saturate = msg.max_angle_saturate;
    }
    else {
      resolved.max_angle_saturate = 0.0
    }

    return resolved;
    }
};

module.exports = StrategyParam;
