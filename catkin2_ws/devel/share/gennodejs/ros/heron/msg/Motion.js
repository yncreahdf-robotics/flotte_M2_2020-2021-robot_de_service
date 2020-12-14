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

class Motion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position_x = null;
      this.position_y = null;
      this.orientation_z = null;
      this.orientation_w = null;
      this.plate_height = null;
    }
    else {
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_z')) {
        this.orientation_z = initObj.orientation_z
      }
      else {
        this.orientation_z = 0.0;
      }
      if (initObj.hasOwnProperty('orientation_w')) {
        this.orientation_w = initObj.orientation_w
      }
      else {
        this.orientation_w = 0.0;
      }
      if (initObj.hasOwnProperty('plate_height')) {
        this.plate_height = initObj.plate_height
      }
      else {
        this.plate_height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motion
    // Serialize message field [position_x]
    bufferOffset = _serializer.float32(obj.position_x, buffer, bufferOffset);
    // Serialize message field [position_y]
    bufferOffset = _serializer.float32(obj.position_y, buffer, bufferOffset);
    // Serialize message field [orientation_z]
    bufferOffset = _serializer.float32(obj.orientation_z, buffer, bufferOffset);
    // Serialize message field [orientation_w]
    bufferOffset = _serializer.float32(obj.orientation_w, buffer, bufferOffset);
    // Serialize message field [plate_height]
    bufferOffset = _serializer.float32(obj.plate_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motion
    let len;
    let data = new Motion(null);
    // Deserialize message field [position_x]
    data.position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_y]
    data.position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation_z]
    data.orientation_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [orientation_w]
    data.orientation_w = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [plate_height]
    data.plate_height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'heron/Motion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '095414ef2073631e78bdbf064814a71b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 position_x
    float32 position_y
    
    float32 orientation_z
    float32 orientation_w
    
    float32 plate_height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motion(null);
    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = 0.0
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = 0.0
    }

    if (msg.orientation_z !== undefined) {
      resolved.orientation_z = msg.orientation_z;
    }
    else {
      resolved.orientation_z = 0.0
    }

    if (msg.orientation_w !== undefined) {
      resolved.orientation_w = msg.orientation_w;
    }
    else {
      resolved.orientation_w = 0.0
    }

    if (msg.plate_height !== undefined) {
      resolved.plate_height = msg.plate_height;
    }
    else {
      resolved.plate_height = 0.0
    }

    return resolved;
    }
};

module.exports = Motion;
