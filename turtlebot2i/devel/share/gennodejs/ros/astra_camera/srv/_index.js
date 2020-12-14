
"use strict";

let GetIRExposure = require('./GetIRExposure.js')
let GetUVCWhiteBalance = require('./GetUVCWhiteBalance.js')
let SetIRExposure = require('./SetIRExposure.js')
let GetUVCExposure = require('./GetUVCExposure.js')
let SetUVCExposure = require('./SetUVCExposure.js')
let GetCameraInfo = require('./GetCameraInfo.js')
let GetUVCGain = require('./GetUVCGain.js')
let SetIRGain = require('./SetIRGain.js')
let SetUVCGain = require('./SetUVCGain.js')
let GetIRGain = require('./GetIRGain.js')
let SetLDP = require('./SetLDP.js')
let SetLaser = require('./SetLaser.js')
let GetDeviceType = require('./GetDeviceType.js')
let GetSerial = require('./GetSerial.js')
let SetUVCWhiteBalance = require('./SetUVCWhiteBalance.js')
let SwitchIRCamera = require('./SwitchIRCamera.js')
let ResetIRGain = require('./ResetIRGain.js')
let ResetIRExposure = require('./ResetIRExposure.js')
let SetIRFlood = require('./SetIRFlood.js')

module.exports = {
  GetIRExposure: GetIRExposure,
  GetUVCWhiteBalance: GetUVCWhiteBalance,
  SetIRExposure: SetIRExposure,
  GetUVCExposure: GetUVCExposure,
  SetUVCExposure: SetUVCExposure,
  GetCameraInfo: GetCameraInfo,
  GetUVCGain: GetUVCGain,
  SetIRGain: SetIRGain,
  SetUVCGain: SetUVCGain,
  GetIRGain: GetIRGain,
  SetLDP: SetLDP,
  SetLaser: SetLaser,
  GetDeviceType: GetDeviceType,
  GetSerial: GetSerial,
  SetUVCWhiteBalance: SetUVCWhiteBalance,
  SwitchIRCamera: SwitchIRCamera,
  ResetIRGain: ResetIRGain,
  ResetIRExposure: ResetIRExposure,
  SetIRFlood: SetIRFlood,
};
