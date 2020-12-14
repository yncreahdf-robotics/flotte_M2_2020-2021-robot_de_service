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

class winch {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.height = null;
      this.heightTicks = null;
    }
    else {
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('heightTicks')) {
        this.heightTicks = initObj.heightTicks
      }
      else {
        this.heightTicks = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type winch
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [heightTicks]
    bufferOffset = _serializer.float32(obj.heightTicks, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type winch
    let len;
    let data = new winch(null);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heightTicks]
    data.heightTicks = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'heron/winch';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9c1d8d82efdc45aeff9d8a7722fdb8ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 height
    float32 heightTicks
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new winch(null);
    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.heightTicks !== undefined) {
      resolved.heightTicks = msg.heightTicks;
    }
    else {
      resolved.heightTicks = 0.0
    }

    return resolved;
    }
};

module.exports = winch;
