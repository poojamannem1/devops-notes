Day1:
Tools Installed
* Linux installed from microsoft office store
      first upadate apt using :sudo apt update 
* Git installation 
      set up git repository and establish ssh connection for password less connection
      steps:
           ssh-keygen -t ed25519 -C "github@mail.com"
         Add it to ssh agent
           eval "$(ssh-agent -s)
           ssh-add ~/.ssh/id_ed25519
         Copy public key and add to github
           cat ~/.ssh/id_ed25519.pub
         Go to github->settings->ssh and gpg keys -> New SSH key ->paste it
         Change remote to ssh:
            git remote set-url origin git@github.com:repo/.git
         Test connection
            ssh -T git@github.com
            display a message "hi username! you have authenticated,***********"
         Push normally
             git push origin main 
             no password required anymore
Tasks:
* craeted ssh connection to git
* created system_info.sh script and push into gitrepo

Challenges:
* for password authentication we should enter the token not password
   ->it will be in setting->developer settings->personal access tokens ->generate token
   ->token should copy and save some where because it doesnot show after anywhere
* before push check your git config --list 
* while saving token in txt file and push it in repo ,will get warning as security warning
  
