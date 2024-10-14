// Auto-generated. Do not edit!

// (in-package xf_mic_api.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Stop_To_Play_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stop_play = null;
    }
    else {
      if (initObj.hasOwnProperty('stop_play')) {
        this.stop_play = initObj.stop_play
      }
      else {
        this.stop_play = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stop_To_Play_srvRequest
    // Serialize message field [stop_play]
    bufferOffset = _serializer.int8(obj.stop_play, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stop_To_Play_srvRequest
    let len;
    let data = new Stop_To_Play_srvRequest(null);
    // Deserialize message field [stop_play]
    data.stop_play = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xf_mic_api/Stop_To_Play_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0aeb9c588e4cbf2a5e32b5d9a2d5b7d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 stop_play
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stop_To_Play_srvRequest(null);
    if (msg.stop_play !== undefined) {
      resolved.stop_play = msg.stop_play;
    }
    else {
      resolved.stop_play = 0
    }

    return resolved;
    }
};

class Stop_To_Play_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.fail_reason = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
      if (initObj.hasOwnProperty('fail_reason')) {
        this.fail_reason = initObj.fail_reason
      }
      else {
        this.fail_reason = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stop_To_Play_srvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [fail_reason]
    bufferOffset = _serializer.string(obj.fail_reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stop_To_Play_srvResponse
    let len;
    let data = new Stop_To_Play_srvResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fail_reason]
    data.fail_reason = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    length += object.fail_reason.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xf_mic_api/Stop_To_Play_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c69ca9071ec7e43db13595b361d43ae5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    string fail_reason
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stop_To_Play_srvResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    if (msg.fail_reason !== undefined) {
      resolved.fail_reason = msg.fail_reason;
    }
    else {
      resolved.fail_reason = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: Stop_To_Play_srvRequest,
  Response: Stop_To_Play_srvResponse,
  md5sum() { return '0204824c56e88dfd8a1e8d415331b53f'; },
  datatype() { return 'xf_mic_api/Stop_To_Play_srv'; }
};
