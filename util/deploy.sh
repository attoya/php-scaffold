#!/bin/bash
# ONLY EDIT WITH NOTEPAD++ AND REMOVE ALL LE RETURNS (\r)
#
# Deployment for all servers and environments, including hotfixes
#

# Get Params
svr_deploy=$1
env_deploy=$2
app_deploy=$3
ver_deploy=$4

# Root Directory
ROOT="/srv/site/attoya/scaffold"

# Includes
source ${ROOT}/util/inc/config.sh


# Check if server is set
if [ -z "$svr_deploy" ]; then
  echo -e "${RED} First parameter must be server ${NC}"
  exit
fi

# Check if env is set
if [ -z "$env_deploy" ]; then
  echo -e "${RED} Second parameter must be deployment environment ${NC}"
  exit
fi

# Default to `rc` branch if not specified
if [ -z "$app_deploy" ]; then
  app_deploy="origin/rc"
fi
# Default Python Version
if [ -z "$ver_deploy" ]; then
  ver_deploy='3.6'
fi

# Confirmation Params Display
echo -e "${BG_BLUE} Project Deployment ${NC} ";
echo -e "${BG_GRAY} Server      : ${NC}${GREEN} $svr_deploy ${NC}";
echo -e "${BG_GRAY} Environment : ${NC}${GREEN} $env_deploy ${NC}";
echo -e "${BG_GRAY} Scaffold    : ${NC}${GREEN} $app_deploy ${NC}";
echo -e "${BG_GRAY} Python Ver  : ${NC}${GREEN} $ver_deploy ${NC}";

# Since build notes are reloaded from the repo, we can't display first.
echo -e "\n${BG_RED} IMPORTANT! Check build notes before deploying. ${NC}\n"


# Prompt if hotfix
echo -e -n "${GREEN} Is this a HOTFIX deployment? (y/n) ${NC} ";
read is_hotfix


# @important NON-PROD / NON-HOTFIX
if [ $env_deploy != 'prod' ] && [ $is_hotfix = 'n' ]; then

  # Prompt if to hard deploy
  echo -e -n "${GREEN} Hard Deploy? (y/n) ${RED}(With DB reset)${GREEN} ${NC} ";
  read hard_deploy

  # Prompt if to setup script
  echo -e -n "${GREEN} Run Symlink Scripts? (y/n)${GREEN} ${NC} ";
  read symlink_script

  # Prompt if to reset files - @future Not used yet
  # echo -e -n "${GREEN} Run Reset Files Script? (y/n) ${NC} ";
  # read reset_files

fi


# Prompt if to deploy
echo -e -n "${BG_GREEN} Start Deployment? (y/n) ${NC} ";
read deploy

# Handle Deployment
case ${deploy:0:1} in
  y|Y )


    # @important NON-DEV
    if [ $env_deploy != 'dev' ]; then

      # Pull Updates (Force reset to overwrite hot fixes)
      git -C ${ROOT} fetch --all
      git -C ${ROOT} reset --hard $app_deploy

    fi


    # Static - @important NON-HOTFIX
    if [ $is_hotfix = 'n' ]; then

      # Make cache dir - Needed for first time setup
      if [ ! -d "${ROOT}/cache" ]; then
        mkdir ${ROOT}/cache
        mkdir ${ROOT}/cache/static
        mkdir ${ROOT}/cache/template
      fi

      # Purge old static files to prevent leaks from old files
      # rm -rf ${ROOT}/cache/static/img/
      # rm -rf ${ROOT}/cache/static/css/
      # rm -rf ${ROOT}/cache/static/js/

      # Purge temp files and logs
      rm -rf ${ROOT}/log/*
      rm -rf ${ROOT}/tmp/*

    fi


    # Symlinks - @important NON-PROD / NON-HOTFIX
    if [ $env_deploy != 'prod' ] && [ $is_hotfix = 'n' ]; then
      if [ $symlink_script = 'y' ]; then

        # Volume Data
        ln -sfn "/srv/data/${env_deploy}/attoya/scaffold/data/" data

        source ${ROOT}/util/symlinks_delete.sh
        source ${ROOT}/util/symlinks_create.sh

      fi
    else

      source ${ROOT}/util/symlinks_delete.sh
      source ${ROOT}/util/symlinks_create.sh

    fi


    # Settings - @important NON-HOTFIX
    if [ $is_hotfix = 'n' ]; then

      # Deploy config files for server
      cp ${ROOT}/config/server/${svr_deploy}.php ${ROOT}/config/settings_server.php

      # Deploy config files for environment
      cp ${ROOT}/config/environment/${env_deploy}.php ${ROOT}/config/settings_environment.php

    fi


    # Enter Python Virtual Environment
    cd ${ROOT}

    # Update Required Packages - @important NON-HOTFIX
    if [ $is_hotfix = 'n' ]; then

      pip install -r ${ROOT}/config/requirements_${ver_deploy}.txt

    fi

    # Hard Deploy - @important NON-PROD / NON-HOTFIX
    #    if [ $env_deploy != 'prod' ] && [ $is_hotfix = 'n' ]; then
    #      if [ $hard_deploy = 'y' ]; then
    #
    #        php command.php dev_reset_db
    #        php command.php deploy_sql
    #
    #        if [ $env_deploy = 'dev' ]; then
    #          php command.php dev_deploy_sql
    #        fi
    #
    #      fi
    #    fi

    # Deploy System Command - @important NON-HOTFIX
    # if [ $is_hotfix = 'n' ]; then
    #   php command.php deploy_system
    # fi

    # Collect Static Files
    # php command.php collect_static --noinput --link


    # Reset Files Script - @important NON-PROD / NON-HOTFIX
    # @future Not used yet
    # if [ $env_deploy != 'prod' ] && [ $is_hotfix = 'n' ]; then
    #   if [ $reset_files = 'y' ]; then
    #     /bin/bash ${ROOT}/util/hard_reset_files.sh ${env_deploy}
    #   else
    #     echo -e "${BG_BLUE} Be sure to run hard_reset_files.sh for a fresh copy of data & uploads files. ${NC}"
    #   fi
    # fi


    # Show Build Notes
    source ${ROOT}/util/build_note_show.sh


  ;;
  * )
    echo -e " ${RED}Deployment Aborted${NC} "
  ;;
esac

