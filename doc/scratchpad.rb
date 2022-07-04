#!/usr/bin/ruby
# @Author: Mark S. Miller
# @Date:   2018-02-26 11:20:03
# @Last Modified by:   Mark S. Miller
# @Last Modified time: 2018-02-26 11:24:52
#
# Copyright (c) 2017-2018 Sharp Stone Codewerks / Mark S. Miller

#-#-#-#-#-# LOCALHOST TEST USERS #-#-#-#-#-#

u2 = User.create!({ :email => "mark.s.miller@protonmail.com", :password => "tomservo", :password_confirmation => "tomservo",
                    :username => "tomservo", :name => "Tom Servo" })

u3 = User.create!({ :email => "mmiller@sharpstone.net", :password => "crowtrobot", :password_confirmation => "crowtrobot",
                    :username => "crowtrobot", :name => "Crow T. Robot" })
