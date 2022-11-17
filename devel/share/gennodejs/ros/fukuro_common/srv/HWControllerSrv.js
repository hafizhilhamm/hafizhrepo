// Auto-generated. Do not edit!

// (in-package fukuro_common.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Compass = require('../msg/Compass.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class HWControllerSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.refresh = null;
      this.STMConnect = null;
      this.isSTM = null;
      this.ArduinoConnect = null;
      this.isArduino = null;
      this.Compass = null;
    }
    else {
      if (initObj.hasOwnProperty('refresh')) {
        this.refresh = initObj.refresh
      }
      else {
        this.refresh = 0;
      }
      if (initObj.hasOwnProperty('STMConnect')) {
        this.STMConnect = initObj.STMConnect
      }
      else {
        this.STMConnect = 0;
      }
      if (initObj.hasOwnProperty('isSTM')) {
        this.isSTM = initObj.isSTM
      }
      else {
        this.isSTM = 0;
      }
      if (initObj.hasOwnProperty('ArduinoConnect')) {
        this.ArduinoConnect = initObj.ArduinoConnect
      }
      else {
        this.ArduinoConnect = 0;
      }
      if (initObj.hasOwnProperty('isArduino')) {
        this.isArduino = initObj.isArduino
      }
      else {
        this.isArduino = 0;
      }
      if (initObj.hasOwnProperty('Compass')) {
        this.Compass = initObj.Compass
      }
      else {
        this.Compass = new Compass();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWControllerSrvRequest
    // Serialize message field [refresh]
    bufferOffset = _serializer.uint8(obj.refresh, buffer, bufferOffset);
    // Serialize message field [STMConnect]
    bufferOffset = _serializer.int64(obj.STMConnect, buffer, bufferOffset);
    // Serialize message field [isSTM]
    bufferOffset = _serializer.uint8(obj.isSTM, buffer, bufferOffset);
    // Serialize message field [ArduinoConnect]
    bufferOffset = _serializer.int64(obj.ArduinoConnect, buffer, bufferOffset);
    // Serialize message field [isArduino]
    bufferOffset = _serializer.uint8(obj.isArduino, buffer, bufferOffset);
    // Serialize message field [Compass]
    bufferOffset = Compass.serialize(obj.Compass, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWControllerSrvRequest
    let len;
    let data = new HWControllerSrvRequest(null);
    // Deserialize message field [refresh]
    data.refresh = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [STMConnect]
    data.STMConnect = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [isSTM]
    data.isSTM = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ArduinoConnect]
    data.ArduinoConnect = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [isArduino]
    data.isArduino = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Compass]
    data.Compass = Compass.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 27;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/HWControllerSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa64da40807e371629cc4f509a53fcf9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 refresh
    int64 STMConnect
    uint8 isSTM
    int64 ArduinoConnect
    uint8 isArduino
    Compass Compass
    
    ================================================================================
    MSG: fukuro_common/Compass
    float64 cmps
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HWControllerSrvRequest(null);
    if (msg.refresh !== undefined) {
      resolved.refresh = msg.refresh;
    }
    else {
      resolved.refresh = 0
    }

    if (msg.STMConnect !== undefined) {
      resolved.STMConnect = msg.STMConnect;
    }
    else {
      resolved.STMConnect = 0
    }

    if (msg.isSTM !== undefined) {
      resolved.isSTM = msg.isSTM;
    }
    else {
      resolved.isSTM = 0
    }

    if (msg.ArduinoConnect !== undefined) {
      resolved.ArduinoConnect = msg.ArduinoConnect;
    }
    else {
      resolved.ArduinoConnect = 0
    }

    if (msg.isArduino !== undefined) {
      resolved.isArduino = msg.isArduino;
    }
    else {
      resolved.isArduino = 0
    }

    if (msg.Compass !== undefined) {
      resolved.Compass = Compass.Resolve(msg.Compass)
    }
    else {
      resolved.Compass = new Compass()
    }

    return resolved;
    }
};

class HWControllerSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.port_list = null;
      this.manufacturer_list = null;
      this.STMSuccess = null;
      this.ArduinoSuccess = null;
      this.Compassuccess = null;
    }
    else {
      if (initObj.hasOwnProperty('port_list')) {
        this.port_list = initObj.port_list
      }
      else {
        this.port_list = [];
      }
      if (initObj.hasOwnProperty('manufacturer_list')) {
        this.manufacturer_list = initObj.manufacturer_list
      }
      else {
        this.manufacturer_list = [];
      }
      if (initObj.hasOwnProperty('STMSuccess')) {
        this.STMSuccess = initObj.STMSuccess
      }
      else {
        this.STMSuccess = 0;
      }
      if (initObj.hasOwnProperty('ArduinoSuccess')) {
        this.ArduinoSuccess = initObj.ArduinoSuccess
      }
      else {
        this.ArduinoSuccess = 0;
      }
      if (initObj.hasOwnProperty('Compassuccess')) {
        this.Compassuccess = initObj.Compassuccess
      }
      else {
        this.Compassuccess = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HWControllerSrvResponse
    // Serialize message field [port_list]
    bufferOffset = _arraySerializer.string(obj.port_list, buffer, bufferOffset, null);
    // Serialize message field [manufacturer_list]
    bufferOffset = _arraySerializer.string(obj.manufacturer_list, buffer, bufferOffset, null);
    // Serialize message field [STMSuccess]
    bufferOffset = _serializer.uint8(obj.STMSuccess, buffer, bufferOffset);
    // Serialize message field [ArduinoSuccess]
    bufferOffset = _serializer.uint8(obj.ArduinoSuccess, buffer, bufferOffset);
    // Serialize message field [Compassuccess]
    bufferOffset = _serializer.uint8(obj.Compassuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HWControllerSrvResponse
    let len;
    let data = new HWControllerSrvResponse(null);
    // Deserialize message field [port_list]
    data.port_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [manufacturer_list]
    data.manufacturer_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [STMSuccess]
    data.STMSuccess = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ArduinoSuccess]
    data.ArduinoSuccess = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [Compassuccess]
    data.Compassuccess = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.port_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.manufacturer_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'fukuro_common/HWControllerSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15c18a38ca129ceffe9c3e2ec45ec9e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] port_list
    string[] manufacturer_list
    uint8 STMSuccess
    uint8 ArduinoSuccess
    uint8 Compassuccess
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HWControllerSrvResponse(null);
    if (msg.port_list !== undefined) {
      resolved.port_list = msg.port_list;
    }
    else {
      resolved.port_list = []
    }

    if (msg.manufacturer_list !== undefined) {
      resolved.manufacturer_list = msg.manufacturer_list;
    }
    else {
      resolved.manufacturer_list = []
    }

    if (msg.STMSuccess !== undefined) {
      resolved.STMSuccess = msg.STMSuccess;
    }
    else {
      resolved.STMSuccess = 0
    }

    if (msg.ArduinoSuccess !== undefined) {
      resolved.ArduinoSuccess = msg.ArduinoSuccess;
    }
    else {
      resolved.ArduinoSuccess = 0
    }

    if (msg.Compassuccess !== undefined) {
      resolved.Compassuccess = msg.Compassuccess;
    }
    else {
      resolved.Compassuccess = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: HWControllerSrvRequest,
  Response: HWControllerSrvResponse,
  md5sum() { return '3d5c94862d83cd0042f79f7755128b97'; },
  datatype() { return 'fukuro_common/HWControllerSrv'; }
};
