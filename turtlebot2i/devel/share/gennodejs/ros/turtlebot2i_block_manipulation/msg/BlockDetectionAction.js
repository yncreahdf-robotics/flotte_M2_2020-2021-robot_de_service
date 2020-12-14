// Auto-generated. Do not edit!

// (in-package turtlebot2i_block_manipulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BlockDetectionActionGoal = require('./BlockDetectionActionGoal.js');
let BlockDetectionActionResult = require('./BlockDetectionActionResult.js');
let BlockDetectionActionFeedback = require('./BlockDetectionActionFeedback.js');

//-----------------------------------------------------------

class BlockDetectionAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new BlockDetectionActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new BlockDetectionActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new BlockDetectionActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BlockDetectionAction
    // Serialize message field [action_goal]
    bufferOffset = BlockDetectionActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = BlockDetectionActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = BlockDetectionActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BlockDetectionAction
    let len;
    let data = new BlockDetectionAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = BlockDetectionActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = BlockDetectionActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = BlockDetectionActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += BlockDetectionActionGoal.getMessageSize(object.action_goal);
    length += BlockDetectionActionResult.getMessageSize(object.action_result);
    length += BlockDetectionActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtlebot2i_block_manipulation/BlockDetectionAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5acc9e09aed07885e7fc5f05ec2935b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    BlockDetectionActionGoal action_goal
    BlockDetectionActionResult action_result
    BlockDetectionActionFeedback action_feedback
    
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockDetectionActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    BlockDetectionGoal goal
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockDetectionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    string frame
    float32 table_height
    float32 block_size
    
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockDetectionActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    BlockDetectionResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockDetectionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result definition
    geometry_msgs/PoseArray blocks
    turtlebot2i_block_manipulation/BlockPoseArray colored_blocks
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockPoseArray
    std_msgs/Header header
    turtlebot2i_block_manipulation/BlockPose[] poses
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockPose
    geometry_msgs/Point position
    geometry_msgs/Quaternion orientation
    std_msgs/ColorRGBA color
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockDetectionActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    BlockDetectionFeedback feedback
    
    ================================================================================
    MSG: turtlebot2i_block_manipulation/BlockDetectionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BlockDetectionAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = BlockDetectionActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new BlockDetectionActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = BlockDetectionActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new BlockDetectionActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = BlockDetectionActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new BlockDetectionActionFeedback()
    }

    return resolved;
    }
};

module.exports = BlockDetectionAction;
