// Auto-generated. Do not edit!

// (in-package turtle_diff_drive.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class wheel_velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.omega_l = null;
      this.omega_r = null;
    }
    else {
      if (initObj.hasOwnProperty('omega_l')) {
        this.omega_l = initObj.omega_l
      }
      else {
        this.omega_l = 0.0;
      }
      if (initObj.hasOwnProperty('omega_r')) {
        this.omega_r = initObj.omega_r
      }
      else {
        this.omega_r = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wheel_velocity
    // Serialize message field [omega_l]
    bufferOffset = _serializer.float64(obj.omega_l, buffer, bufferOffset);
    // Serialize message field [omega_r]
    bufferOffset = _serializer.float64(obj.omega_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wheel_velocity
    let len;
    let data = new wheel_velocity(null);
    // Deserialize message field [omega_l]
    data.omega_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [omega_r]
    data.omega_r = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'turtle_diff_drive/wheel_velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '060a9c3aa2e2b6228526d91e96852741';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 omega_l
    float64 omega_r
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wheel_velocity(null);
    if (msg.omega_l !== undefined) {
      resolved.omega_l = msg.omega_l;
    }
    else {
      resolved.omega_l = 0.0
    }

    if (msg.omega_r !== undefined) {
      resolved.omega_r = msg.omega_r;
    }
    else {
      resolved.omega_r = 0.0
    }

    return resolved;
    }
};

module.exports = wheel_velocity;
