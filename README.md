***
### See Wiki for more Info
    http://github.com/giozom/Cucumber-Test-Framework-for-Newbies/wiki
***
### Updated March 8 , 2012
##### Added RVM and gemset
##### Status: Feature file passing

***
### GIT Clone repo
    git clone git@github.com:giozom/Cucumber-Test-Framework-for-Newbies.git

### Create gemset
    $ rvm gemset create demo
    
### Install RVM  
    $ rvm install ruby-1.9.2-p180 

***

### You'll need to run the following after you have cloned this project
    gem install bundler
    bundle install       

### To Run the features, run the following:
    bundle exec cucumber  -r features/support/ -r features/step_definitions  
***


