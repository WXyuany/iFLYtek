// Auto-generated. Do not edit!

// (in-package xf_mic_tts_online.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class Play_TTS_Online_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text = null;
      this.appID = null;
      this.speakerName = null;
    }
    else {
      if (initObj.hasOwnProperty('text')) {
        this.text = initObj.text
      }
      else {
        this.text = '';
      }
      if (initObj.hasOwnProperty('appID')) {
        this.appID = initObj.appID
      }
      else {
        this.appID = '';
      }
      if (initObj.hasOwnProperty('speakerName')) {
        this.speakerName = initObj.speakerName
      }
      else {
        this.speakerName = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Play_TTS_Online_srvRequest
    // Serialize message field [text]
    bufferOffset = _serializer.string(obj.text, buffer, bufferOffset);
    // Serialize message field [appID]
    bufferOffset = _serializer.string(obj.appID, buffer, bufferOffset);
    // Serialize message field [speakerName]
    bufferOffset = _serializer.string(obj.speakerName, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Play_TTS_Online_srvRequest
    let len;
    let data = new Play_TTS_Online_srvRequest(null);
    // Deserialize message field [text]
    data.text = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [appID]
    data.appID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [speakerName]
    data.speakerName = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text.length;
    length += object.appID.length;
    length += object.speakerName.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xf_mic_tts_online/Play_TTS_Online_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa0b209b416110e6d0024ce69404cbd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string text
    string appID
    string speakerName
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Play_TTS_Online_srvRequest(null);
    if (msg.text !== undefined) {
      resolved.text = msg.text;
    }
    else {
      resolved.text = ''
    }

    if (msg.appID !== undefined) {
      resolved.appID = msg.appID;
    }
    else {
      resolved.appID = ''
    }

    if (msg.speakerName !== undefined) {
      resolved.speakerName = msg.speakerName;
    }
    else {
      resolved.speakerName = ''
    }

    return resolved;
    }
};

class Play_TTS_Online_srvResponse {
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
    // Serializes a message object of type Play_TTS_Online_srvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [fail_reason]
    bufferOffset = _serializer.string(obj.fail_reason, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Play_TTS_Online_srvResponse
    let len;
    let data = new Play_TTS_Online_srvResponse(null);
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
    return 'xf_mic_tts_online/Play_TTS_Online_srvResponse';
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
    const resolved = new Play_TTS_Online_srvResponse(null);
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
  Request: Play_TTS_Online_srvRequest,
  Response: Play_TTS_Online_srvResponse,
  md5sum() { return '8933c186a674fd503166dc2df31b3720'; },
  datatype() { return 'xf_mic_tts_online/Play_TTS_Online_srv'; }
};
