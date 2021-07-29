require "slack-notify"
require 'clockwork'
# 下記のgemをrequireすると、minutesなどの時間を指し示すメソッドを使えるようになるので、記述しておくことを推奨します。
require 'active_support/time'

# client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
# client.notify("Hello There!")

module Clockwork
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
  every(3.minutes,'test') do
    sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
    sample.notify 'Hello'
  end
end
