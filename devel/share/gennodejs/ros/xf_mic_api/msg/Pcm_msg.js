// Auto-generated. Do not edit!

// (in-package xf_mic_api.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pcm_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.length = null;
      this.pcm_buf = null;
    }
    else {
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
      if (initObj.hasOwnProperty('pcm_buf')) {
        this.pcm_buf = initObj.pcm_buf
      }
      else {
        this.pcm_buf = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pcm_msg
    // Serialize message field [length]
    bufferOffset = _serializer.int8(obj.length, buffer, bufferOffset);
    // Serialize message field [pcm_buf]
    bufferOffset = _arraySerializer.char(obj.pcm_buf, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pcm_msg
    let len;
    let data = new Pcm_msg(null);
    // Deserialize message field [length]
    data.length = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [pcm_buf]
    data.pcm_buf = _arrayDeserializer.char(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.pcm_buf.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xf_mic_api/Pcm_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16b54b71ac26cea4c3b47ae21456fcc5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 length
    char[] pcm_buf
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pcm_msg(null);
    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    if (msg.pcm_buf !== undefined) {
      resolved.pcm_buf = msg.pcm_buf;
    }
    else {
      resolved.pcm_buf = []
    }

    return resolved;
    }
};

module.exports = Pcm_msg;
