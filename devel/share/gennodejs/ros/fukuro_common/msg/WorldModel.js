// Auto-generated. Do not edit!

// (in-package fukuro_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Obstacle = require('./Obstacle.js');
let Point2d = require('./Point2d.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class WorldModel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_name = null;
      this.ball_visible = null;
      this.obstacle_visible = null;
      this.friend_visible = null;
      this.available = null;
      this.set_obstacle = null;
      this.position = null;
      this.teammates = null;
      this.velocity = null;
      this.local_friend = null;
      this.global_friend = null;
      this.local_ball = null;
      this.global_ball = null;
      this.local_balls = null;
      this.balls = null;
      this.way_points = null;
      this.obstacles = null;
      this.obstacle1 = null;
      this.obstacle2 = null;
      this.kiper_obstacle = null;
      this.local_obstacles = null;
      this.global_obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_name')) {
        this.robot_name = initObj.robot_name
      }
      else {
        this.robot_name = '';
      }
      if (initObj.hasOwnProperty('ball_visible')) {
        this.ball_visible = initObj.ball_visible
      }
      else {
        this.ball_visible = false;
      }
      if (initObj.hasOwnProperty('obstacle_visible')) {
        this.obstacle_visible = initObj.obstacle_visible
      }
      else {
        this.obstacle_visible = false;
      }
      if (initObj.hasOwnProperty('friend_visible')) {
        this.friend_visible = initObj.friend_visible
      }
      else {
        this.friend_visible = false;
      }
      if (initObj.hasOwnProperty('available')) {
        this.available = initObj.available
      }
      else {
        this.available = [];
      }
      if (initObj.hasOwnProperty('set_obstacle')) {
        this.set_obstacle = initObj.set_obstacle
      }
      else {
        this.set_obstacle = false;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('teammates')) {
        this.teammates = initObj.teammates
      }
      else {
        this.teammates = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('local_friend')) {
        this.local_friend = initObj.local_friend
      }
      else {
        this.local_friend = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('global_friend')) {
        this.global_friend = initObj.global_friend
      }
      else {
        this.global_friend = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('local_ball')) {
        this.local_ball = initObj.local_ball
      }
      else {
        this.local_ball = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('global_ball')) {
        this.global_ball = initObj.global_ball
      }
      else {
        this.global_ball = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('local_balls')) {
        this.local_balls = initObj.local_balls
      }
      else {
        this.local_balls = [];
      }
      if (initObj.hasOwnProperty('balls')) {
        this.balls = initObj.balls
      }
      else {
        this.balls = [];
      }
      if (initObj.hasOwnProperty('way_points')) {
        this.way_points = initObj.way_points
      }
      else {
        this.way_points = [];
      }
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
      if (initObj.hasOwnProperty('obstacle1')) {
        this.obstacle1 = initObj.obstacle1
      }
      else {
        this.obstacle1 = new Obstacle();
      }
      if (initObj.hasOwnProperty('obstacle2')) {
        this.obstacle2 = initObj.obstacle2
      }
      else {
        this.obstacle2 = new Obstacle();
      }
      if (initObj.hasOwnProperty('kiper_obstacle')) {
        this.kiper_obstacle = initObj.kiper_obstacle
      }
      else {
        this.kiper_obstacle = new Obstacle();
      }
      if (initObj.hasOwnProperty('local_obstacles')) {
        this.local_obstacles = initObj.local_obstacles
      }
      else {
        this.local_obstacles = [];
      }
      if (initObj.hasOwnProperty('global_obstacles')) {
        this.global_obstacles = initObj.global_obstacles
      }
      else {
        this.global_obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WorldModel
    // Serialize message field [robot_name]
    bufferOffset = _serializer.string(obj.robot_name, buffer, bufferOffset);
    // Serialize message field [ball_visible]
    bufferOffset = _serializer.bool(obj.ball_visible, buffer, bufferOffset);
    // Serialize message field [obstacle_visible]
    bufferOffset = _serializer.bool(obj.obstacle_visible, buffer, bufferOffset);
    // Serialize message field [friend_visible]
    bufferOffset = _serializer.bool(obj.friend_visible, buffer, bufferOffset);
    // Serialize message field [available]
    bufferOffset = _arraySerializer.bool(obj.available, buffer, bufferOffset, null);
    // Serialize message field [set_obstacle]
    bufferOffset = _serializer.bool(obj.set_obstacle, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [teammates]
    // Serialize the length for message field [teammates]
    bufferOffset = _serializer.uint32(obj.teammates.length, buffer, bufferOffset);
    obj.teammates.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose2D.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [local_friend]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.local_friend, buffer, bufferOffset);
    // Serialize message field [global_friend]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.global_friend, buffer, bufferOffset);
    // Serialize message field [local_ball]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.local_ball, buffer, bufferOffset);
    // Serialize message field [global_ball]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.global_ball, buffer, bufferOffset);
    // Serialize message field [local_balls]
    // Serialize the length for message field [local_balls]
    bufferOffset = _serializer.uint32(obj.local_balls.length, buffer, bufferOffset);
    obj.local_balls.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [balls]
    // Serialize the length for message field [balls]
    bufferOffset = _serializer.uint32(obj.balls.length, buffer, bufferOffset);
    obj.balls.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [way_points]
    // Serialize the length for message field [way_points]
    bufferOffset = _serializer.uint32(obj.way_points.length, buffer, bufferOffset);
    obj.way_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = Obstacle.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obstacle1]
    bufferOffset = Obstacle.serialize(obj.obstacle1, buffer, bufferOffset);
    // Serialize message field [obstacle2]
    bufferOffset = Obstacle.serialize(obj.obstacle2, buffer, bufferOffset);
    // Serialize message field [kiper_obstacle]
    bufferOffset = Obstacle.serialize(obj.kiper_obstacle, buffer, bufferOffset);
    // Serialize message field [local_obstacles]
    // Serialize the length for message field [local_obstacles]
    bufferOffset = _serializer.uint32(obj.local_obstacles.length, buffer, bufferOffset);
    obj.local_obstacles.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [global_obstacles]
    // Serialize the length for message field [global_obstacles]
    bufferOffset = _serializer.uint32(obj.global_obstacles.length, buffer, bufferOffset);
    obj.global_obstacles.forEach((val) => {
      bufferOffset = Point2d.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WorldModel
    let len;
    let data = new WorldModel(null);
    // Deserialize message field [robot_name]
    data.robot_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ball_visible]
    data.ball_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [obstacle_visible]
    data.obstacle_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [friend_visible]
    data.friend_visible = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [available]
    data.available = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [set_obstacle]
    data.set_obstacle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [teammates]
    // Deserialize array length for message field [teammates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.teammates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.teammates[i] = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_friend]
    data.local_friend = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_friend]
    data.global_friend = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_ball]
    data.local_ball = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [global_ball]
    data.global_ball = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_balls]
    // Deserialize array length for message field [local_balls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_balls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_balls[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [balls]
    // Deserialize array length for message field [balls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.balls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.balls[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [way_points]
    // Deserialize array length for message field [way_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.way_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.way_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = Obstacle.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obstacle1]
    data.obstacle1 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [obstacle2]
    data.obstacle2 = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [kiper_obstacle]
    data.kiper_obstacle = Obstacle.deserialize(buffer, bufferOffset);
    // Deserialize message field [local_obstacles]
    // Deserialize array length for message field [local_obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.local_obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.local_obstacles[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [global_obstacles]
    // Deserialize array length for message field [global_obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.global_obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.global_obstacles[i] = Point2d.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_name);
    length += object.available.length;
    length += 24 * object.teammates.length;
    length += 24 * object.local_balls.length;
    length += 24 * object.balls.length;
    length += 24 * object.way_points.length;
    length += 25 * object.obstacles.length;
    length += 16 * object.local_obstacles.length;
    length += 16 * object.global_obstacles.length;
    return length + 259;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fukuro_common/WorldModel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83b86ec7340f012e81177e9324633119';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string robot_name
    bool ball_visible
    bool obstacle_visible
    bool friend_visible
    bool[] available
    bool set_obstacle # untuk lomba online
    geometry_msgs/Pose2D position
    geometry_msgs/Pose2D[] teammates
    geometry_msgs/Pose2D velocity
    geometry_msgs/Point local_friend
    geometry_msgs/Point global_friend
    geometry_msgs/Point local_ball
    geometry_msgs/Point global_ball
    geometry_msgs/Point[] local_balls
    geometry_msgs/Point[] balls
    geometry_msgs/Point[] way_points
    Obstacle[] obstacles
    Obstacle obstacle1   # untuk lomba online
    Obstacle obstacle2   # untuk lomba online
    Obstacle kiper_obstacle # untuk lomba online
    Point2d[] local_obstacles
    Point2d[] global_obstacles
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: fukuro_common/Obstacle
    Point2d pos
    float64 r
    int8 shape
    ================================================================================
    MSG: fukuro_common/Point2d
    float64 x
    float64 y
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WorldModel(null);
    if (msg.robot_name !== undefined) {
      resolved.robot_name = msg.robot_name;
    }
    else {
      resolved.robot_name = ''
    }

    if (msg.ball_visible !== undefined) {
      resolved.ball_visible = msg.ball_visible;
    }
    else {
      resolved.ball_visible = false
    }

    if (msg.obstacle_visible !== undefined) {
      resolved.obstacle_visible = msg.obstacle_visible;
    }
    else {
      resolved.obstacle_visible = false
    }

    if (msg.friend_visible !== undefined) {
      resolved.friend_visible = msg.friend_visible;
    }
    else {
      resolved.friend_visible = false
    }

    if (msg.available !== undefined) {
      resolved.available = msg.available;
    }
    else {
      resolved.available = []
    }

    if (msg.set_obstacle !== undefined) {
      resolved.set_obstacle = msg.set_obstacle;
    }
    else {
      resolved.set_obstacle = false
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Pose2D.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Pose2D()
    }

    if (msg.teammates !== undefined) {
      resolved.teammates = new Array(msg.teammates.length);
      for (let i = 0; i < resolved.teammates.length; ++i) {
        resolved.teammates[i] = geometry_msgs.msg.Pose2D.Resolve(msg.teammates[i]);
      }
    }
    else {
      resolved.teammates = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Pose2D.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Pose2D()
    }

    if (msg.local_friend !== undefined) {
      resolved.local_friend = geometry_msgs.msg.Point.Resolve(msg.local_friend)
    }
    else {
      resolved.local_friend = new geometry_msgs.msg.Point()
    }

    if (msg.global_friend !== undefined) {
      resolved.global_friend = geometry_msgs.msg.Point.Resolve(msg.global_friend)
    }
    else {
      resolved.global_friend = new geometry_msgs.msg.Point()
    }

    if (msg.local_ball !== undefined) {
      resolved.local_ball = geometry_msgs.msg.Point.Resolve(msg.local_ball)
    }
    else {
      resolved.local_ball = new geometry_msgs.msg.Point()
    }

    if (msg.global_ball !== undefined) {
      resolved.global_ball = geometry_msgs.msg.Point.Resolve(msg.global_ball)
    }
    else {
      resolved.global_ball = new geometry_msgs.msg.Point()
    }

    if (msg.local_balls !== undefined) {
      resolved.local_balls = new Array(msg.local_balls.length);
      for (let i = 0; i < resolved.local_balls.length; ++i) {
        resolved.local_balls[i] = geometry_msgs.msg.Point.Resolve(msg.local_balls[i]);
      }
    }
    else {
      resolved.local_balls = []
    }

    if (msg.balls !== undefined) {
      resolved.balls = new Array(msg.balls.length);
      for (let i = 0; i < resolved.balls.length; ++i) {
        resolved.balls[i] = geometry_msgs.msg.Point.Resolve(msg.balls[i]);
      }
    }
    else {
      resolved.balls = []
    }

    if (msg.way_points !== undefined) {
      resolved.way_points = new Array(msg.way_points.length);
      for (let i = 0; i < resolved.way_points.length; ++i) {
        resolved.way_points[i] = geometry_msgs.msg.Point.Resolve(msg.way_points[i]);
      }
    }
    else {
      resolved.way_points = []
    }

    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = Obstacle.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    if (msg.obstacle1 !== undefined) {
      resolved.obstacle1 = Obstacle.Resolve(msg.obstacle1)
    }
    else {
      resolved.obstacle1 = new Obstacle()
    }

    if (msg.obstacle2 !== undefined) {
      resolved.obstacle2 = Obstacle.Resolve(msg.obstacle2)
    }
    else {
      resolved.obstacle2 = new Obstacle()
    }

    if (msg.kiper_obstacle !== undefined) {
      resolved.kiper_obstacle = Obstacle.Resolve(msg.kiper_obstacle)
    }
    else {
      resolved.kiper_obstacle = new Obstacle()
    }

    if (msg.local_obstacles !== undefined) {
      resolved.local_obstacles = new Array(msg.local_obstacles.length);
      for (let i = 0; i < resolved.local_obstacles.length; ++i) {
        resolved.local_obstacles[i] = Point2d.Resolve(msg.local_obstacles[i]);
      }
    }
    else {
      resolved.local_obstacles = []
    }

    if (msg.global_obstacles !== undefined) {
      resolved.global_obstacles = new Array(msg.global_obstacles.length);
      for (let i = 0; i < resolved.global_obstacles.length; ++i) {
        resolved.global_obstacles[i] = Point2d.Resolve(msg.global_obstacles[i]);
      }
    }
    else {
      resolved.global_obstacles = []
    }

    return resolved;
    }
};

module.exports = WorldModel;
