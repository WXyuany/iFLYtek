
"use strict";

let Play_Target_Wav_srv = require('./Play_Target_Wav_srv.js')
let Stop_To_Play_srv = require('./Stop_To_Play_srv.js')
let Adjust_Voice_srv = require('./Adjust_Voice_srv.js')
let Delete_Target_Wav_srv = require('./Delete_Target_Wav_srv.js')
let Get_Wav_List_srv = require('./Get_Wav_List_srv.js')

module.exports = {
  Play_Target_Wav_srv: Play_Target_Wav_srv,
  Stop_To_Play_srv: Stop_To_Play_srv,
  Adjust_Voice_srv: Adjust_Voice_srv,
  Delete_Target_Wav_srv: Delete_Target_Wav_srv,
  Get_Wav_List_srv: Get_Wav_List_srv,
};
