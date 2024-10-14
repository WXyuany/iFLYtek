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

class Get_Wav_List_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_list = null;
    }
    else {
      if (initObj.hasOwnProperty('get_list')) {
        this.get_list = initObj.get_list
      }
      else {
        this.get_list = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Get_Wav_List_srvRequest
    // Serialize message field [get_list]
    bufferOffset = _serializer.int8(obj.get_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Get_Wav_List_srvRequest
    let len;
    let data = new Get_Wav_List_srvRequest(null);
    // Deserialize message field [get_list]
    data.get_list = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xf_mic_api/Get_Wav_List_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7068c57d50cf3ab491adae2d8fea0cfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 get_list
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Get_Wav_List_srvRequest(null);
    if (msg.get_list !== undefined) {
      resolved.get_list = msg.get_list;
    }
    else {
      resolved.get_list = 0
    }

    return resolved;
    }
};

class Get_Wav_List_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.fail_reason = null;
      this.number = null;
      this.wav_list = null;
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
      if (initObj.hasOwnProperty('number')) {
        this.number = initObj.number
      }
      else {
        this.number = 0;
      }
      if (initObj.hasOwnProperty('wav_list')) {
        this.wav_list = initObj.wav_list
      }
      else {
        this.wav_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Get_Wav_List_srvResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    // Serialize message field [fail_reason]
    bufferOffset = _serializer.string(obj.fail_reason, buffer, bufferOffset);
    // Serialize message field [number]
    bufferOffset = _serializer.int8(obj.number, buffer, bufferOffset);
    // Serialize message field [wav_list]
    bufferOffset = _arraySerializer.string(obj.wav_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Get_Wav_List_srvResponse
    let len;
    let data = new Get_Wav_List_srvResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fail_reason]
    data.fail_reason = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [number]
    data.number = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [wav_list]
    data.wav_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.result.length;
    length += object.fail_reason.length;
    object.wav_list.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 13;
  }

  static datatype() {
    // Returns string type for a service object
    return 'xf_mic_api/Get_Wav_List_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c793d8332417dd7a757cd073c90cd762';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    string fail_reason
    int8 number
    string[] wav_list
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Get_Wav_List_srvResponse(null);
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

    if (msg.number !== undefined) {
      resolved.number = msg.number;
    }
    else {
      resolved.number = 0
    }

    if (msg.wav_list !== undefined) {
      resolved.wav_list = msg.wav_list;
    }
    else {
      resolved.wav_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: Get_Wav_List_srvRequest,
  Response: Get_Wav_List_srvResponse,
  md5sum() { return 'b9fb17ba35cb24b08a954cbed3a86ace'; },
  datatype() { return 'xf_mic_api/Get_Wav_List_srv'; }
};
