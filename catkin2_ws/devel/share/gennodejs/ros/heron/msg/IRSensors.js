// Auto-generated. Do not edit!

// (in-package heron.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ValueUnitFloat = require('./ValueUnitFloat.js');

//-----------------------------------------------------------

class IRSensors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.av_gauche = null;
      this.av_droit = null;
      this.ar_gauche = null;
      this.ar_droit = null;
      this.ar = null;
    }
    else {
      if (initObj.hasOwnProperty('av_gauche')) {
        this.av_gauche = initObj.av_gauche
      }
      else {
        this.av_gauche = new Array(4).fill(new ValueUnitFloat());
      }
      if (initObj.hasOwnProperty('av_droit')) {
        this.av_droit = initObj.av_droit
      }
      else {
        this.av_droit = new Array(4).fill(new ValueUnitFloat());
      }
      if (initObj.hasOwnProperty('ar_gauche')) {
        this.ar_gauche = initObj.ar_gauche
      }
      else {
        this.ar_gauche = new Array(4).fill(new ValueUnitFloat());
      }
      if (initObj.hasOwnProperty('ar_droit')) {
        this.ar_droit = initObj.ar_droit
      }
      else {
        this.ar_droit = new Array(4).fill(new ValueUnitFloat());
      }
      if (initObj.hasOwnProperty('ar')) {
        this.ar = initObj.ar
      }
      else {
        this.ar = new Array(4).fill(new ValueUnitFloat());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IRSensors
    // Check that the constant length array field [av_gauche] has the right length
    if (obj.av_gauche.length !== 4) {
      throw new Error('Unable to serialize array field av_gauche - length must be 4')
    }
    // Serialize message field [av_gauche]
    obj.av_gauche.forEach((val) => {
      bufferOffset = ValueUnitFloat.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [av_droit] has the right length
    if (obj.av_droit.length !== 4) {
      throw new Error('Unable to serialize array field av_droit - length must be 4')
    }
    // Serialize message field [av_droit]
    obj.av_droit.forEach((val) => {
      bufferOffset = ValueUnitFloat.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [ar_gauche] has the right length
    if (obj.ar_gauche.length !== 4) {
      throw new Error('Unable to serialize array field ar_gauche - length must be 4')
    }
    // Serialize message field [ar_gauche]
    obj.ar_gauche.forEach((val) => {
      bufferOffset = ValueUnitFloat.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [ar_droit] has the right length
    if (obj.ar_droit.length !== 4) {
      throw new Error('Unable to serialize array field ar_droit - length must be 4')
    }
    // Serialize message field [ar_droit]
    obj.ar_droit.forEach((val) => {
      bufferOffset = ValueUnitFloat.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [ar] has the right length
    if (obj.ar.length !== 4) {
      throw new Error('Unable to serialize array field ar - length must be 4')
    }
    // Serialize message field [ar]
    obj.ar.forEach((val) => {
      bufferOffset = ValueUnitFloat.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IRSensors
    let len;
    let data = new IRSensors(null);
    // Deserialize message field [av_gauche]
    len = 4;
    data.av_gauche = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.av_gauche[i] = ValueUnitFloat.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [av_droit]
    len = 4;
    data.av_droit = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.av_droit[i] = ValueUnitFloat.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ar_gauche]
    len = 4;
    data.ar_gauche = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ar_gauche[i] = ValueUnitFloat.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ar_droit]
    len = 4;
    data.ar_droit = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ar_droit[i] = ValueUnitFloat.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [ar]
    len = 4;
    data.ar = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ar[i] = ValueUnitFloat.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.av_gauche.forEach((val) => {
      length += ValueUnitFloat.getMessageSize(val);
    });
    object.av_droit.forEach((val) => {
      length += ValueUnitFloat.getMessageSize(val);
    });
    object.ar_gauche.forEach((val) => {
      length += ValueUnitFloat.getMessageSize(val);
    });
    object.ar_droit.forEach((val) => {
      length += ValueUnitFloat.getMessageSize(val);
    });
    object.ar.forEach((val) => {
      length += ValueUnitFloat.getMessageSize(val);
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'heron/IRSensors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2d4f6afdad29c06c7d455d83f2670d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ValueUnitFloat[4] av_gauche
    ValueUnitFloat[4] av_droit
    ValueUnitFloat[4] ar_gauche
    ValueUnitFloat[4] ar_droit
    ValueUnitFloat[4] ar
    
    ================================================================================
    MSG: heron/ValueUnitFloat
    float64 value
    string unit
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IRSensors(null);
    if (msg.av_gauche !== undefined) {
      resolved.av_gauche = new Array(4)
      for (let i = 0; i < resolved.av_gauche.length; ++i) {
        if (msg.av_gauche.length > i) {
          resolved.av_gauche[i] = ValueUnitFloat.Resolve(msg.av_gauche[i]);
        }
        else {
          resolved.av_gauche[i] = new ValueUnitFloat();
        }
      }
    }
    else {
      resolved.av_gauche = new Array(4).fill(new ValueUnitFloat())
    }

    if (msg.av_droit !== undefined) {
      resolved.av_droit = new Array(4)
      for (let i = 0; i < resolved.av_droit.length; ++i) {
        if (msg.av_droit.length > i) {
          resolved.av_droit[i] = ValueUnitFloat.Resolve(msg.av_droit[i]);
        }
        else {
          resolved.av_droit[i] = new ValueUnitFloat();
        }
      }
    }
    else {
      resolved.av_droit = new Array(4).fill(new ValueUnitFloat())
    }

    if (msg.ar_gauche !== undefined) {
      resolved.ar_gauche = new Array(4)
      for (let i = 0; i < resolved.ar_gauche.length; ++i) {
        if (msg.ar_gauche.length > i) {
          resolved.ar_gauche[i] = ValueUnitFloat.Resolve(msg.ar_gauche[i]);
        }
        else {
          resolved.ar_gauche[i] = new ValueUnitFloat();
        }
      }
    }
    else {
      resolved.ar_gauche = new Array(4).fill(new ValueUnitFloat())
    }

    if (msg.ar_droit !== undefined) {
      resolved.ar_droit = new Array(4)
      for (let i = 0; i < resolved.ar_droit.length; ++i) {
        if (msg.ar_droit.length > i) {
          resolved.ar_droit[i] = ValueUnitFloat.Resolve(msg.ar_droit[i]);
        }
        else {
          resolved.ar_droit[i] = new ValueUnitFloat();
        }
      }
    }
    else {
      resolved.ar_droit = new Array(4).fill(new ValueUnitFloat())
    }

    if (msg.ar !== undefined) {
      resolved.ar = new Array(4)
      for (let i = 0; i < resolved.ar.length; ++i) {
        if (msg.ar.length > i) {
          resolved.ar[i] = ValueUnitFloat.Resolve(msg.ar[i]);
        }
        else {
          resolved.ar[i] = new ValueUnitFloat();
        }
      }
    }
    else {
      resolved.ar = new Array(4).fill(new ValueUnitFloat())
    }

    return resolved;
    }
};

module.exports = IRSensors;
