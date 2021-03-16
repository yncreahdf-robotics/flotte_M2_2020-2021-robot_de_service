// Auto-generated. Do not edit!

// (in-package robotino_isen.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AnnotatedPoses = require('../msg/AnnotatedPoses.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AnnotatedPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.annotatedPose = null;
    }
    else {
      if (initObj.hasOwnProperty('annotatedPose')) {
        this.annotatedPose = initObj.annotatedPose
      }
      else {
        this.annotatedPose = new AnnotatedPoses();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotatedPoseRequest
    // Serialize message field [annotatedPose]
    bufferOffset = AnnotatedPoses.serialize(obj.annotatedPose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotatedPoseRequest
    let len;
    let data = new AnnotatedPoseRequest(null);
    // Deserialize message field [annotatedPose]
    data.annotatedPose = AnnotatedPoses.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AnnotatedPoses.getMessageSize(object.annotatedPose);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotino_isen/AnnotatedPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d0ccfa12f5e09103ce667ff0b82b210';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AnnotatedPoses annotatedPose
    
    ================================================================================
    MSG: robotino_isen/AnnotatedPoses
    string name
    geometry_msgs/Point pose
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotatedPoseRequest(null);
    if (msg.annotatedPose !== undefined) {
      resolved.annotatedPose = AnnotatedPoses.Resolve(msg.annotatedPose)
    }
    else {
      resolved.annotatedPose = new AnnotatedPoses()
    }

    return resolved;
    }
};

class AnnotatedPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnnotatedPoseResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnnotatedPoseResponse
    let len;
    let data = new AnnotatedPoseResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robotino_isen/AnnotatedPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnnotatedPoseResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: AnnotatedPoseRequest,
  Response: AnnotatedPoseResponse,
  md5sum() { return '4d0ccfa12f5e09103ce667ff0b82b210'; },
  datatype() { return 'robotino_isen/AnnotatedPose'; }
};
