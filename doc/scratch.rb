#!/usr/bin/ruby
# @Author: msmiller
# @Date:   2019-12-23 19:50:24
# @Last Modified by:   msmiller
# @Last Modified time: 2019-12-23 19:52:44
#
# Copyright (c) Sharp Stone Codewerks / Mark S. Miller

Timeline.all.each { |x| x.approved = false; x.save; x.approved = true; x.save; }
