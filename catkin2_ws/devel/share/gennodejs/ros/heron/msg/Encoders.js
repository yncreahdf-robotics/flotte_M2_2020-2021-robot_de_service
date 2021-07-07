// Auto-generated. Do not edit!

// (in-package heron.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Encoders {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.EncFl = null;
      this.EncFr = null;
      this.EncBl = null;
      this.EncBr = null;
    }
    else {
      if (initObj.hasOwnProperty('EncFl')) {
        this.EncFl = initObj.EncFl
      }
      else {
        this.EncFl = 0;
      }
      if (initObj.hasOwnProperty('EncFr')) {
        this.EncFr = initObj.EncFr
      }
      else {
        this.EncFr = 0;
      }
      if (initObj.hasOwnProperty('EncBl')) {
        this.EncBl = initObj.EncBl
      }
      else {
        this.EncBl = 0;
      }
      if (initObj.hasOwnProperty('EncBr')) {
        this.EncBr = initObj.EncBr
      }
      else {
        this.EncBr = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoders
    // Serialize message field [EncFl]
    bufferOffset = _serializer.int64(obj.EncFl, buffer, bufferOffset);
    // Serialize message field [EncFr]
    bufferOffset = _serializer.int64(obj.EncFr, buffer, bufferOffset);
    // Serialize message field [EncBl]
    bufferOffset = _serializer.int64(obj.EncBl, buffer, bufferOffset);
    // Serialize message field [EncBr]
    bufferOffset = _serializer.int64(obj.EncBr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoders
    let len;
    let data = new Encoders(null);
    // Deserialize message field [EncFl]
    data.EncFl = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [EncFr]
    data.EncFr = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [EncBl]
    data.EncBl = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [EncBr]
    data.EncBr = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'heron/Encoders';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c892101147370a467da7bacfd2db99e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 EncFl
    int64 EncFr
    int64 EncBl
    int64 EncBr
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Encoders(null);
    if (msg.EncFl !== undefined) {
      resolved.EncFl = msg.EncFl;
    }
    else {
      resolved.EncFl = 0
    }

    if (msg.EncFr !== undefined) {
      resolved.EncFr = msg.EncFr;
    }
    else {
      resolved.EncFr = 0
    }

    if (msg.EncBl !== undefined) {
      resolved.EncBl = msg.EncBl;
    }
    else {
      resolved.EncBl = 0
    }

    if (msg.EncBr !== undefined) {
      resolved.EncBr = msg.EncBr;
    }
    else {
      resolved.EncBr = 0
    }

    return resolved;
    }
};

module.exports = Encoders;
