[![forthebadge](https://forthebadge.com/images/badges/fuck-it-ship-it.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/60-percent-of-the-time-works-every-time.svg)](https://forthebadge.com)

# Music-postgres
As a DJ, I felt there was a need to create a local database to manage my music.
As a developer, I'm used to spinning up and interacting with databases using ORMs and advanced GUI clients.

But in the spirit of C.S. Weekly [(read about it here)](https://medium.com/@vapurrmaid/code-something-weekly-how-and-why-44640d279ca1), I decided to do everything solely from command line with bash scripts and the `psql` client.

I Quickly found these pros:
- It was a quick refresher on using raw sqls commands
- It's fast
- I didn't need to wait to get a UI spun up or start pgadmin every time I want to interact with my db. Instead I was able to starting using the tool immediately.

And these cons:
- It's harder to debug
- I have my db info hardcoded
- Creating the db uses an sql script with a referenced path. Therefore one has to make sure they're
in the correct directory when running this command. 
- The same issue as the above would exist if I persisted configuration information in a relative path, which was
starting to get out of scope for a tiny project.

Overall, I already feel the usefulness of this little tool and will continue to use it. Feel free to download
and setup a database to make use of the tool as well.


## Installation

> **WARNING** This program was developed on a Windows 10 machine and was not tested elsewhere. There are likely obvious bugs
if porting the software as-is to other platforms.

If you wish to use this program, make sure you have postgresql installed
in your system and in your path. You can always test if this is the case
by simply running one of the binaries included with the installation:

```bash
createdb
```

### Creating
If using this tool for the first time, you can simply run `my-music --create`. However, **make sure
you are in the same directory as the script**.

### Setting an Alias
Other than creating the db, the script can be run from anywhere. You can add the script to a `/local/bin`
folder (and make sure it's in your path). I simply just referenced the repository directory on my computer
from `~/.bashrc`:

```bash
alias my-music="<PATH TO DIRECTORY>/my-music"
```


## How To Use

```
my-music [[-c dbname user] | [-d dbname user] | [-h] | [-i]]

-c, --create  Creates database
-d, --delete  Deletes database. Cannot be undone.
  dbname [default=MyMusic]  Name of database to create or delete.
  user [default=postgres] Name of database owner and user.

-h, --help  Displays command line options
-i, --interactive Interactively add items, list and update items.
```

### Changing Default Database, User, Password
The database name, user and password are all hard-coded in the script for simplicity.
It is assumed that this is to be run on **personal machines only**.

The defaults are set to:
- database name = MyMusic
- user = postgres
- password = postgres

Simply change the values in the file `my-music` if you use a different setup.

```bash
## Database info
user=postgres     # change to your username
password=postgres # change to your password
dbname=MyMusic    # change to your database name
```

## Contributions [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
Feel free to open a PR with bugs or patches to more easily port this script to other platforms.
