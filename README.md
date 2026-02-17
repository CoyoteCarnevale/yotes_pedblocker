# yotes_pedblocker
A small client side script for RedM using the CFX event populationPedCreating that blocks the spawning of a ped from both ambient and scenario populations.

I created this script after being unable to find any existing repositories that prevented a ped model from spawning at the source instead of just despawning ones that were already being created. Despawners work fine for one or two specific peds that you want to not spawn in an area (IE, removing a bear from spawning near a camp ymap without disabling ALL bears in your server), but for widespread / multiple peds I found that it created weird visuals when the peds would respawn and despawn, and relied on you knowing the locations of all those spawns - this is just better all around!

Currently the script is set to prevent the underage ped models (IE, the orphan teenagers in Saint Denis) from spawning, but you could add any ped to the list that you wanted at the top of the client.lua!

Thank you to the Bryce Canyon County (BCC) community for assisting in research! 
Thank you Outsider for assisting in optimization!

Installation: 
- Download the repository
- Extract and rename the folder to yotes_pedblocker
- Add entire folder to your server resources
- Ensure yotes_pedblocker in your server.cfg
- Restart your server
