#!/usr/bin/ruby
# @Author: msmiller
# @Date:   2022-02-06 13:15:05
# @Last Modified by:   msmiller
# @Last Modified time: 2022-02-06 14:22:19
#
# Copyright (c) Sharp Stone Codewerks / Mark S. Miller

# Flipper.enable(:some_feature, User.last)
# Flipper.disable(:some_feature, User.last)

require 'flipper'
require 'flipper/adapters/redis'

Flipper.configure do |config|
  config.adapter { Flipper::Adapters::Redis.new(Redis.new) }
end

Flipper.register(:admins) do |actor, context|
  actor.respond_to?(:admin?) && actor.admin?
end

Flipper.register(:roots) do |actor, context|
  actor.respond_to?(:root?) && actor.root?
end

# Flipper.register(:roots) do |actor, context|
#   actor.respond_to?(:root?) && actor.admin?
# end

########

Rails.application.configure do
  # Load specific features that are used on most requests
  config.flipper.preload = [:admin_consoles, :admin_access, :root_access]

  # Or completely disable preloading
  # config.flipper.preload = false
end

