# encoding: utf-8

bold="\e[1m"
off="\e[0m"

section "#{bold}Command line one-liners#{off}

Arturo Herrero
 github/arturoherrero
twitter/arturoherrero

Socrates UK 2013" do
end

center <<-EOS
  Run the last command

  $ #{bold}!!#{off}
EOS

center <<-EOS
  Run the last command as root

  $ #{bold}sudo !!#{off}
EOS

center <<-EOS
  Create a script of the last executed command

  $ #{bold}echo "!!" > script.sh#{off}
EOS

block <<-EOS
  Reuse all parameter of the previous command line

  $ echo cd .
  $ #{bold}!*#{off}#{off}
EOS

block <<-EOS
  Run the last command with some argument

  $ echo a b c d e
  $ #{bold}echo !!:2#{off}
  $ #{bold}echo !!:3-$#{off}
EOS

block <<-EOS
  Insert the last argument of the previous command

  $ cp script.sh /usr/bin/
  $ #{bold}cd <ESC> .#{off}
EOS

center <<-EOS
  Runs previous command but replacing

  $ echo no typos
  $ #{bold}^typos^errors#{off}
EOS

block <<-EOS
  Escape any command aliases

  $ alias ls="ls -a"
  $ #{bold}\\ls#{off}
EOS

center <<-EOS
  Quickly rename a file

  $ #{bold}mv filename.{old,new}#{off}
  $ #{bold}mv filename.{png,jpg}#{off}
EOS

center <<-EOS
  Create a quick back-up copy of a file

  $ #{bold}cp file.txt{,.bak}#{off}
EOS

block <<-EOS
  Run a command from the history

  $ history
   ...
   1225  ls -l
   1226  git status
   1227  history
  $ #{bold}!-3#{off}
  $ #{bold}!1225#{off}
EOS

center <<-EOS
  Search the history for the most recent command beginning with 'text'

  $ #{bold}!text#{off}
EOS

center <<-EOS
  List of commands you use most often

  $ #{bold}history | awk '{print $2}' | sort | uniq -c | sort -rn | head#{off}
EOS

center <<-EOS
  Execute a command without saving it in the history

  $ #{bold}<space>command#{off}
EOS

center <<-EOS
  Make directory including intermediate directories

  $ #{bold}mkdir -p a/long/directory/path#{off}
EOS

center <<-EOS
  Create a directory and change into it

  $ #{bold}mkdir dir && cd $_#{off}
EOS

center <<-EOS
  Change to the previous working directory

  $ #{bold}cd -#{off}
EOS

center <<-EOS
  Jump to a directory
  Execute a command
  Jump back to current directory

  $ #{bold}(cd /tmp && ls)#{off}
EOS

center <<-EOS
  Create simple text file from command line

  $ #{bold}cat > file.txt#{off}
  {your text here}
  {your text here}
  #{bold}<ctrl-d>#{off}
EOS

center <<-EOS
  Empty a file

  $ #{bold}> file.txt#{off}
EOS

block <<-EOS
  Show PATH in a human-readable way

  $ #{bold}echo $PATH | tr ':' '\\n'#{off}
  $ #{bold}tr ':' '\\n' <<< $PATH#{off}
EOS

center <<-EOS
  Make 'less' behave like 'tail -f'

  $ #{bold}less +F somelogfile#{off}
EOS

block <<-EOS
  Redirect standard input to a file
  Print it to standard output

  $ #{bold}command | tee file.txt | less#{off}

  ┌─────────┐  ┌─────────┐  ┌─────────┐
  │ command │─▸│   tee   │─▸│ stdout  │
  └─────────┘  └────┬────┘  └─────────┘
                    │
                    ▾
              ┌───────────┐
              │   file    │
              └───────────┘
EOS

center <<-EOS
  Search for a <pattern> string inside all files in the current directory

  $ #{bold}grep -RnsI --color=auto <pattern> *#{off}
EOS

block <<-EOS
  Beyond grep

  _   /|
  \\'o.O'
  =(___)=
     U    ack!

  $ #{bold}ack <pattern>#{off}

EOS

center <<-EOS
  Recursively remove all empty directories

  $ #{bold}find . -type d -empty -delete#{off}
EOS

center <<-EOS
  Count your commits

  $ #{bold}git shortlog -sn#{off}
EOS

center <<-EOS
  Serve current directory tree at http://$HOSTNAME:8000/

  $ #{bold}python -m SimpleHTTPServer#{off}
EOS

block <<-EOS
  Share a file between two computers

  $ #{bold}nc -l 5566 > data-dump.sql#{off}
  $ #{bold}nc <his-ip-address> 5566 < data-dump.sql#{off}
EOS

center <<-EOS
  Download an entire website

  $ #{bold}wget -m http://website.com#{off}
EOS

center <<-EOS
  Clear the terminal screen

  #{bold}<ctrl-l>#{off}
EOS

center <<-EOS
  Salvage a borked terminal

  $ #{bold}reset#{off}
EOS

center <<-EOS
  Close shell keeping all subprocess running

  $ #{bold}disown -a && exit#{off}
EOS

center <<-EOS
  Run a command immune to hangups

  $ #{bold}nohup command &#{off}
EOS

center <<-EOS
  Attach screen over ssh

  $ #{bold}ssh user@host -t screen -r#{off}
EOS

center <<-EOS
  Compare a remote file with a local file

  $ #{bold}ssh user@host cat /path/to/remotefile | diff /path/to/localfile -#{off}
EOS

center <<-EOS
  Get your public IP address

  $ #{bold}curl ifconfig.me#{off}
EOS

center <<-EOS
  Set audible alarm when an IP address comes online

  $ #{bold}ping -a IP_address#{off}
EOS

center <<-EOS
  List programs with open ports and connections

  $ #{bold}lsof -i#{off}
EOS

center <<-EOS
  Currently mounted filesystems in nice layout

  $ #{bold}mount | column -t#{off}
EOS

center <<-EOS
  Display free disk space

  $ #{bold}df -h#{off}
EOS

center <<-EOS
  Display disk usage statistics for the current directory

  $ #{bold}du -sh *#{off}
EOS

center <<-EOS
  Display 10 biggest files/folders for the current directory

  $ #{bold}du -s * | sort -nr | head#{off}
EOS

center <<-EOS
  Execute a command at a given time

  $ #{bold}echo "ls -l" | at midnight#{off}
EOS

center <<-EOS
  Simple stopwatch

  $ #{bold}time read#{off}
  #{bold}<ctrl-d>#{off}
EOS

center <<-EOS
  Put a console clock in top right corner

  $ #{bold}while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-29));date;tput rc;done &#{off}
EOS

center <<-EOS
  Display the top ten running processes
  (Sorted by memory usage)

  $ #{bold}ps aux | sort -nk +4 | tail#{off}
EOS

block <<-EOS
  Kill all Ruby processes

  $ #{bold}ps aux | grep ruby | awk '{ print $2 }' | xargs kill -9#{off}
  $ #{bold}ps aux | awk '/ruby/ && ! /awk/ { system("kill -9 "$2) }'#{off}
EOS

center <<-EOS
  32 bits or 64 bits?

  $ #{bold}getconf LONG_BIT#{off}
EOS

center <<-EOS
  Displays a calendar

  $ #{bold}cal 12 1984#{off}
EOS

block <<-EOS
  What day is today?

  $ #{bold}cal | sed "s/.*/ & /;s/ $(date +%d) / [] /"#{off}
  $ #{bold}cal | sed "s/.*/ & /;s/ $(date +%d) / $(printf '\\e[0;31m\e[0;31m[]\e[0m\\e[0m') /"#{off}
EOS

center <<-EOS
  Show File System Hierarchy

  $ #{bold}man hier#{off}
EOS

center <<-EOS
  Quick access to the ascii table

  $ #{bold}man ascii#{off}
EOS

center <<-EOS
  Russian Roulette in Bash

  $ #{bold}[ $[ $RANDOM % 6 ] == 0 ] && rm -rf / || echo "You live"#{off}
EOS

center <<-EOS
  Watch Star Wars via telnet

  $ #{bold}telnet towel.blinkenlights.nl#{off}
EOS

section "That's all, thanks!" do
end

__END__
