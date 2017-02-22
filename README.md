# poka-swiss-tournament
udacity swiss tournament project

# poka-swiss-tournament
udacity swiss tournament project

##Files
* tournament.py -- swiss tournament implementation
* tournament.sql -- database table definitions
* tournament_test.py -- test for swiss tournament for tournament.py

##
Steps 

1. Start Vagrant
  1. Open Terminal browse to vagrant folder
  2. Type `vagrant up` to start VM
  
2. SSH in to the vagrant VM
  1. In the same terminal type `vagrant ssh`

3. Change to the correct folder
  1. Type `cd /vagrant/tournament`
  
4. Run command `psql -f tournament.sql` to create and connect to tournament database

5. `\q` to quit psql terminal

6. Run tournament_test.py 
 
