#!/bin/bash

function display {

    #Clear Console
    echo -e "\033c"

    #Display MOTD
    echo "
$(tput setaf 6)=============================================================================
$(tput setaf 6)::::::::  :::    :::     :::     :::::::::  :::    ::: :::    :::  ::::::::   :::::::: ::::::::::: 
$(tput setaf 6):+:    :+: :+:    :+:   :+: :+:   :+:    :+: :+:   :+:  :+:    :+: :+:    :+: :+:    :+:    :+:     
$(tput setaf 6)+:+        +:+    +:+  +:+   +:+  +:+    +:+ +:+  +:+   +:+    +:+ +:+    +:+ +:+           +:+     
$(tput setaf 6)+#++:++#++ +#++:++#++ +#++:++#++: +#++:++#:  +#++:++    +#++:++#++ +#+    +:+ +#++:++#++    +#+     
$(tput setaf 6)       +#+ +#+    +#+ +#+     +#+ +#+    +#+ +#+  +#+   +#+    +#+ +#+    +#+        +#+    +#+     
$(tput setaf 6)#+#    #+# #+#    #+# #+#     #+# #+#    #+# #+#   #+#  #+#    #+# #+#    #+# #+#    #+#    #+#     
$(tput setaf 6)########  ###    ### ###     ### ###    ### ###    ### ###    ###  ########   ########     ###         
$(tput setaf 6)==============================================================================
    "  
}
# Check if the node IP is matched.
IP=$(curl -s https://checkip.amazonaws.com)
if [ ! "$IP" = 194.233.65.137 ]
then
    display
    echo "$(tput setaf 1)This node is not authorized to use this Multi-Egg. Reason: Invalid IP."
sleep 5
echo "

  $(tput setaf 1)If you found any bug or errors, please submit it to me via UWUX2#1097 or https://discord.gg/7Qkzg6mNbf

  $(tput setaf 3)Which platform are you gonna use?

  1) Python       2)  Nodejs
  "
read -r n

# I was uploading all the server jars to Discord because I was in hurry for vacation lol, will do a complete recode soon.
case $n in
  1) 
    sleep 1

    echo "$(tput setaf 3)Instaling Python Please Wait...."

    sleep 4

    forceStuffs

    sudo apt-get install python3

    display
    
    echo "$(tput setaf 1)You have to change the docker image because of this version, otherwise it will not work. Please go to the Startup tab, and change the docker image to Java 8."
    
    sleep 10
    
    echo -e ""
    
  ;;

  2) 
    sleep 1

    echo "$(tput setaf 3)Instaling Nodejs Please Wait...."

    sleep 4

    forceStuffs

    curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  
    sudo apt-get install -y nodejs

    display   

    echo "$(tput setaf 1)You have to change the docker image because of this version, otherwise it will not work. Please go to the Startup tab, and change the docker image to Java 11."
    
    sleep 10

    echo -e ""

  ;;
      
  ;;

  *) 
    echo "Invalid option, exiting..."
    exit
  ;;
esac  
fi
fi
fi
fi
