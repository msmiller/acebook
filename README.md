# README #


Host with [ninefold.com](http://ninefold.com)

To add an admin panel:

rails generate active_admin:resource [MyModelName]

Some links ...

http://stackoverflow.com/questions/22521049/rails-4-and-active-admin-activemodelforbiddenattributeserror

http://activeadmin.info/documentation.html

http://foundation.zurb.com/docs/components/reveal.html

https://bitbucket.org/msmiller/voaw

##

Test passwords: password

##Password Reset

*(From the console)*


```
user_id = u
new_password = "bloodpig"
theuser = User.find(u)
if theuser
  theuser.password = new_password
  theuser.password_confirmation = new_password
  theuser.save
end
```
