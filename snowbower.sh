#!/bin/bash
echo "

                                                                             -#++=                                       
                                                                              .-=*.                                      
                                                                                .*-                                      
                                                                                  +=                                     
                                                                                   ==                                    
                                                                                    -+                                   
                                                                                     :+.                                 
                                                                                      :+.                                
                                                                                       .+:                               
                                                                                        .+:                              
                                                                                          +-                             
                                                                                           +=                            
                                                                                            ==                           
                                                                                             =+                          
                                                                                              -+. .:-=**+.               
                                                                                          .:-=*%%%%%%###%%.              
                                                                                         =@%#**=+%###*#%##%%:            
                                                                                         +*++++##%#####%%##@=         
     ███████╗███╗   ██╗ ██████╗ ██╗    ██╗██████╗  ██████╗ ██╗    ██╗███████╗██████╗      +####%##%##%%#%%##%%: 
     ██╔════╝████╗  ██║██╔═══██╗██║    ██║██╔══██╗██╔═══██╗██║    ██║██╔════╝██╔══██╗      +%%##%##%##%%%%%%#%@*.
     ███████╗██╔██╗ ██║██║   ██║██║ █╗ ██║██████╔╝██║   ██║██║ █╗ ██║█████╗  ██████╔╝        +%%##%%#%##%#%%#%##%@+.
     ╚════██║██║╚██╗██║██║   ██║██║███╗██║██╔══██╗██║   ██║██║███╗██║██╔══╝  ██╔══██╗         +%%%#%%%%%%%%##%%%*=:
     ███████║██║ ╚████║╚██████╔╝╚███╔███╔╝██████╔╝╚██████╔╝╚███╔███╔╝███████╗██║  ██║           =%#%%%%%%#%%%*-.
     ╚══════╝╚═╝  ╚═══╝ ╚═════╝  ╚══╝╚══╝ ╚═════╝  ╚═════╝  ╚══╝╚══╝ ╚══════╝╚═╝  ╚═╝            -%##%%%#+-.                   
                                                                                                  .##+-.             
"
echo  "     Snowbower, A program script to clear package managers caches"
echo -e "\n"

printf  "Do you want clean pamac cache? (Y/n) "; read response
if [ "$response" = "Y" ] || [ "$response" = "y" ]; then
    echo ""
    echo "     🚧  CLEANING PAMAC CACHE 🚧"                      
    echo ""
    pamac clean
    sleep 1
    echo -e "________________________________________________________\n"
fi

printf "Do you want clean orphans pamac? (Y/n) "; read response2
if [ "$response2" = "Y" ] || [ "$response2" = "y" ]; then
  echo ""
  echo "        🚧  REMOVING ORPHANED PACKAGES FROM PAMAC  🚧"
  echo ""
  pamac remove --orphans
  sleep 1
  echo -e "________________________________________________________\n"
fi

printf "Do yout want clean cache pacman? (Y/n) "; read response3 
if [ "$response3" = "Y" ] || [ "$response3" = "y" ]; then 
  echo "" 
  echo "        🚧    CLEARING PACMAN'S CACHE    🚧"
  echo ""
  sudo pacman -Scc
  sleep 1
  echo -e "________________________________________________________\n"
fi

printf "Do yout want remove unuseds flatpaks packages? (Y/n) "; read response4
if [ "$reponse4" = "Y" ] || [ "$response4" = "y" ]; then 
  echo ""
  echo "        🚧    REMOVING UNUSED PACKAGES IN THE FLATPAK     🚧"
  echo ""
  flatpak remove --unused
fi

