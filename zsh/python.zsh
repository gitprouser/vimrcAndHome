WORKON_HOME=$HOME/venv
PROJECT_HOME=$HOME/src
VIRTUALENVWRAPPER_WORKON_CD=0
# VIRTUALENVWRAPPER_HOOK_DIR=$WORKON_HOME
VIRTUAL_ENV_DISABLE_PROMPT=1

if [ -f /usr/local/bin/virtualenvwrapper.sh ]
then 
  source /usr/local/bin/virtualenvwrapper.sh
elif [ -f /usr/share/virtualenvwrapper/virtualenvwrapper.sh ]
then
  source /usr/share/virtualenvwrapper/virtualenvwrapper.sh
fi

