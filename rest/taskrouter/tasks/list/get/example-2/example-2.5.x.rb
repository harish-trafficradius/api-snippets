# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from https://www.twilio.com/console
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
workspace_sid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'

client = Twilio::REST::Client.new(account_sid, auth_token)

client.taskrouter.v1.workspaces(workspace_sid).tasks
  .list(task_queue_sid: 'WQXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').each do |task|
  puts task.attributes
end

client.taskrouter.v1.workspaces(workspace_sid).tasks
  .list(assignment_status: "pending").each do |task|
  puts task.attributes
end