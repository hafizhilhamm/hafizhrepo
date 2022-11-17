// Auto-generated. Do not edit!

// (in-package fukuro_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Parameter = require('../msg/Parameter.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SpeedTuningRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear = null;
      this.angular = null;
    }
    else {
      if (initObj.hasOwnProperty('linear')) {
        this.linear = initObj.linear
      }
      else {
        this.linear = new Parameter();
      }
      if (initObj.hasOwnProperty('angular')) {
        this.angular = initObj.angular
      }
      else {
        this.angular = new Parameter();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedTuningRequest
    // Serialize message field [linear]
    bufferOffset = Parameter.serialize(obj.linear, buffer, bufferOffset);
    // Serialize message field [angular]
    bufferOffset = Parameter.serialize(obj.angular, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedTuningRequest
    let len;
    let data = new SpeedTuningRequest(null);
    // Deserialize message field [linear]
    data.linear = Parameter.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular]
    data.angular = Parameter.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/SpeedTuningRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3094cde591fc0e253ec2416e29f6fff2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Parameter linear
    Parameter angular
    
    ================================================================================
    MSG: fukuro_common/Parameter
    float64 kp
    float64 ki
    float64 kd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedTuningRequest(null);
    if (msg.linear !== undefined) {
      resolved.linear = Parameter.Resolve(msg.linear)
    }
    else {
      resolved.linear = new Parameter()
    }

    if (msg.angular !== undefined) {
      resolved.angular = Parameter.Resolve(msg.angular)
    }
    else {
      resolved.angular = new Parameter()
    }

    return resolved;
    }
};

class SpeedTuningResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tune_ok = null;
    }
    else {
      if (initObj.hasOwnProperty('tune_ok')) {
        this.tune_ok = initObj.tune_ok
      }
      else {
        this.tune_ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SpeedTuningResponse
    // Serialize message field [tune_ok]
    bufferOffset = _serializer.bool(obj.tune_ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SpeedTuningResponse
    let len;
    let data = new SpeedTuningResponse(null);
    // Deserialize message field [tune_ok]
    data.tune_ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/SpeedTuningResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b731fe652071ec695a1ec7ac77e39ebe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool tune_ok
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SpeedTuningResponse(null);
    if (msg.tune_ok !== undefined) {
      resolved.tune_ok = msg.tune_ok;
    }
    else {
      resolved.tune_ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: SpeedTuningRequest,
  Response: SpeedTuningResponse,
  md5sum() { return 'cd170060ae0088446fa7f04a91313ea5'; },
  datatype() { return 'fukuro_common/SpeedTuning'; }
};
