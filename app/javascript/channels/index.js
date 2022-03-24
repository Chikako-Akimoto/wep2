// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

document.addEventListener('turbolinks:load',function() {
  $(function() {
  $('td.bg:contains("ﾛｰ付")').css("background-color", "yellow");
  $('td.bg:contains("ﾁｮｳｺｳ")').css("background-color", "green");
   $('td.bg:contains("ﾄｿｳ")').css("background-color", "blue");
   $('td.bg2:contains("在庫0")').css("background-color", "red"); //注意アウトプットもう少しきれいなコードがいい
 });

});
