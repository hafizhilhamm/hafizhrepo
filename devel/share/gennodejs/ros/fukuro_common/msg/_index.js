
"use strict";

let StrategyInfo = require('./StrategyInfo.js');
let DribblerControl = require('./DribblerControl.js');
let MotorVel = require('./MotorVel.js');
let STMData = require('./STMData.js');
let StrategyParam = require('./StrategyParam.js');
let WorldModel = require('./WorldModel.js');
let HWController = require('./HWController.js');
let Whites = require('./Whites.js');
let VelCmd = require('./VelCmd.js');
let Point3d = require('./Point3d.js');
let Teammates = require('./Teammates.js');
let MotorParameter = require('./MotorParameter.js');
let RobotVel = require('./RobotVel.js');
let Angle = require('./Angle.js');
let OmnivisionInfo = require('./OmnivisionInfo.js');
let Obstacles = require('./Obstacles.js');
let Compass = require('./Compass.js');
let Localization = require('./Localization.js');
let Obstacle = require('./Obstacle.js');
let RobotControlInfo = require('./RobotControlInfo.js');
let RobotUtility = require('./RobotUtility.js');
let Point2d = require('./Point2d.js');
let OdometryInfo = require('./OdometryInfo.js');
let Parameter = require('./Parameter.js');
let HWControllerCommand = require('./HWControllerCommand.js');
let PathPlan = require('./PathPlan.js');
let Encoder = require('./Encoder.js');
let PWM = require('./PWM.js');
let Ball = require('./Ball.js');
let RobotControl = require('./RobotControl.js');
let Communication = require('./Communication.js');
let HWControllerManual = require('./HWControllerManual.js');
let SerialData = require('./SerialData.js');
let StaticObstacle = require('./StaticObstacle.js');

module.exports = {
  StrategyInfo: StrategyInfo,
  DribblerControl: DribblerControl,
  MotorVel: MotorVel,
  STMData: STMData,
  StrategyParam: StrategyParam,
  WorldModel: WorldModel,
  HWController: HWController,
  Whites: Whites,
  VelCmd: VelCmd,
  Point3d: Point3d,
  Teammates: Teammates,
  MotorParameter: MotorParameter,
  RobotVel: RobotVel,
  Angle: Angle,
  OmnivisionInfo: OmnivisionInfo,
  Obstacles: Obstacles,
  Compass: Compass,
  Localization: Localization,
  Obstacle: Obstacle,
  RobotControlInfo: RobotControlInfo,
  RobotUtility: RobotUtility,
  Point2d: Point2d,
  OdometryInfo: OdometryInfo,
  Parameter: Parameter,
  HWControllerCommand: HWControllerCommand,
  PathPlan: PathPlan,
  Encoder: Encoder,
  PWM: PWM,
  Ball: Ball,
  RobotControl: RobotControl,
  Communication: Communication,
  HWControllerManual: HWControllerManual,
  SerialData: SerialData,
  StaticObstacle: StaticObstacle,
};
