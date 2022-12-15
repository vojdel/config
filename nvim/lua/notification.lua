local notify = require("notify")

local notification = {}

function notification.msg(msg, opt)
  --notify("Hello, Welcome to Space Work!!", "info")
  notify(msg, opt)
end

return notification
