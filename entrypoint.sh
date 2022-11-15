#!/bin/bash

echo '
┌────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┐
│                                                                                                                                                                │
│                  (((((                                                                                                                                         │
│             ##((//(((((####                 ____                   _          __  ____                            ______     _____                             │
│        ((((////(((((((/(#(((//((           / __ \__  ______ _____ ( )_____   /  │/  (_)___  ___  ______________ _/ __/ /_   / ___/___  ______   _____  _____   │
│   (((((##(((((/(/#(/(/(/((//(((##((((     / / / / / / / __ `/ __ \│// ___/  / /│_/ / / __ \/ _ \/ ___/ ___/ __ `/ /_/ __/   \__ \/ _ \/ ___/ │ / / _ \/ ___/   │
│   /(((((((((//##(((/(/((((((((((((((#    / /_/ / /_/ / /_/ / / / / (__  )  / /  / / / / / /  __/ /__/ /  / /_/ / __/ /_    ___/ /  __/ /   │ │/ /  __/ /       │
│   ###*((%((/(##(((((/(##((#((///%#%##    \___\_\__,_/\__,_/_/ /_/ /____/  /_/  /_/_/_/ /_/\___/\___/_/   \__,_/_/  \__/   /____/\___/_/    │___/\___/_/        │
│   #%%(/#%%%(//(((#((((((/%(%(%(##(#/(                                                                                                                          │
│   /(####(%#%%(%%#((((#*((%##%####(((#                                                                                                                          │
│   ((##(((#//##%#(%#%##(/#(%//%((###((       ______              ____             __                ______            __        _                               │
│   (#(#/#%#%#%((#(#/#%%##((#%####(((%%      / ____/___  _____   / __ \____  _____/ /_____  _____   / ____/___  ____  / /_____ _(_)___  ___  _____               │
│   ##%(#(//(%#####((/(##(#%%(%/(###/((     / /_  / __ \/ ___/  / / / / __ \/ ___/ //_/ _ \/ ___/  / /   / __ \/ __ \/ __/ __ `/ / __ \/ _ \/ ___/               │
│   (##%(%#/##((#((#(((##///####/%##(%%    / __/ / /_/ / /     / /_/ / /_/ / /__/ ,< /  __/ /     / /___/ /_/ / / / / /_/ /_/ / / / / /  __/ /                   │
│       ((##%#%/####%(##(#(#(#####(       /_/    \____/_/     /_____/\____/\___/_/│_│\___/_/      \____/\____/_/ /_/\__/\__,_/_/_/ /_/\___/_/                    │
│            ((#%#(((##(%/##/(                                                                                                                                   │
│                 (#%(##/                                                                                                                                        │
│                                                                                                                                                                │
└────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────┘'
echo "Wecome to Quan Nguyen's Minecraft Server for Docker container



"

echo "Get memory configuration from ENV"
sed -i "s/@min_mem/$min_mem/g" /run_mc.sh
sed -i "s/@max_mem/$max_mem/g" /run_mc.sh

if [ -d "mcfile" ]; then
    echo "mcfile directory existed"
else
    echo "mcfile directory does not exist, create mcfile directory"
    mkdir mcfile
fi

echo "Generate Minecraft Server files"
/run_mc.sh

echo "Auto accept EULA"
sed -i "s/eula=false/eula=true/g" /mcfile/eula.txt

echo "Get Minecraft Server configurations from ENV"
sed -i "s/enable-jmx-monitoring=false/enable-jmx-monitoring=$enable_jmx_monitoring/g" /mcfile/server.properties
sed -i "s/rcon.port=25575/rcon.port=$rcon_port/g" /mcfile/server.properties
sed -i "s/level-seed=/level-seed=$level_seed/g" /mcfile/server.properties
sed -i "s/gamemode=survival/gamemode=$gamemode/g" /mcfile/server.properties
sed -i "s/enable-command-block=false/enable-command-block=$enable_command_block/g" /mcfile/server.properties
sed -i "s/enable-query=false/enable-query=$enable_query/g" /mcfile/server.properties
sed -i "s/generator-settings={}/generator-settings=$generator_settings/g" /mcfile/server.properties
sed -i "s/level-name=world/level-name=$level_name/g" /mcfile/server.properties
sed -i "s/motd=A Minecraft Server/motd=$motd/g" /mcfile/server.properties
sed -i "s/query.port=25565/query.port=$query_port/g" /mcfile/server.properties
sed -i "s/pvp=true/pvp=$pvp/g" /mcfile/server.properties
sed -i "s/generate-structures=true/generate-structures=$generate_structures/g" /mcfile/server.properties
sed -i "s/max-chained-neighbor-updates=1000000/max-chained-neighbor-updates=$max_chained_neighbor_updates/g" /mcfile/server.properties
sed -i "s/difficulty=easy/difficulty=$difficulty/g" /mcfile/server.properties
sed -i "s/network-compression-threshold=256/network-compression-threshold=$network_compression_threshold/g" /mcfile/server.properties
sed -i "s/require-resource-pack=false/require-resource-pack=$require_resource_pack/g" /mcfile/server.properties
sed -i "s/max-tick-time=60000/max-tick-time=$max_tick_time/g" /mcfile/server.properties
sed -i "s/use-native-transport=true/use-native-transport=$use_native_transport/g" /mcfile/server.properties
sed -i "s/max-players=20/max-players=$max_players/g" /mcfile/server.properties
sed -i "s/online-mode=true/online-mode=$online_mode/g" /mcfile/server.properties
sed -i "s/enable-status=true/enable-status=$enable_status/g" /mcfile/server.properties
sed -i "s/allow-flight=false/allow-flight=$allow_flight/g" /mcfile/server.properties
sed -i "s/broadcast-rcon-to-ops=true/broadcast-rcon-to-ops=$broadcast_rcon_to_ops/g" /mcfile/server.properties
sed -i "s/view-distance=10/view-distance=$view_distance/g" /mcfile/server.properties
sed -i "s/server-ip=/server-ip=$server_ip/g" /mcfile/server.properties
sed -i "s/resource-pack-prompt=/resource-pack-prompt=$resource_pack_prompt/g" /mcfile/server.properties
sed -i "s/allow-nether=true/allow-nether=$allow_nether/g" /mcfile/server.properties
sed -i "s/server-port=25565/server-port=$server_port/g" /mcfile/server.properties
sed -i "s/enable-rcon=false/enable-rcon=$enable_rcon/g" /mcfile/server.properties
sed -i "s/sync-chunk-writes=true/sync-chunk-writes=$sync_chunk_writes/g" /mcfile/server.properties
sed -i "s/op-permission-level=4/op-permission-level=$op_permission_level/g" /mcfile/server.properties
sed -i "s/prevent-proxy-connections=false/prevent-proxy-connections=$prevent_proxy_connections/g" /mcfile/server.properties
sed -i "s/hide-online-players=false/hide-online-players=$hide_online_players/g" /mcfile/server.properties
sed -i "s/resource-pack=/resource-pack=$resource_pack/g" /mcfile/server.properties
sed -i "s/entity-broadcast-range-percentage=100/entity-broadcast-range-percentage=$entity_broadcast_range_percentage/g" /mcfile/server.properties
sed -i "s/simulation-distance=10/simulation-distance=$simulation_distance/g" /mcfile/server.properties
sed -i "s/rcon.password=/rcon.password=$rcon_password/g" /mcfile/server.properties
sed -i "s/player-idle-timeout=0/player-idle-timeout=$player_idle_timeout/g" /mcfile/server.properties
sed -i "s/force-gamemode=false/force-gamemode=$force_gamemode/g" /mcfile/server.properties
sed -i "s/rate-limit=0/rate-limit=$rate_limit/g" /mcfile/server.properties
sed -i "s/hardcore=false/hardcore=$hardcore/g" /mcfile/server.properties
sed -i "s/white-list=false/white-list=$white_list/g" /mcfile/server.properties
sed -i "s/broadcast-console-to-ops=true/broadcast-console-to-ops=$broadcast_console_to_ops/g" /mcfile/server.properties
sed -i "s/spawn-npcs=true/spawn-npcs=$spawn_npcs/g" /mcfile/server.properties
sed -i "s/spawn-animals=true/spawn-animals=$spawn_animals/g" /mcfile/server.properties
sed -i "s/function-permission-level=2/function-permission-level=$function_permission_level/g" /mcfile/server.properties
sed -i "s/level-type=minecraft\:normal/level-type=$level_type/g" /mcfile/server.properties
sed -i "s/text-filtering-config=/text-filtering-config=$text_filtering_config/g" /mcfile/server.properties
sed -i "s/spawn-monsters=true/spawn-monsters=$spawn_monsters/g" /mcfile/server.properties
sed -i "s/enforce-whitelist=false/enforce-whitelist=$enforce_whitelist/g" /mcfile/server.properties
sed -i "s/resource-pack-sha1=/resource-pack-sha1=$resource_pack_sha1/g" /mcfile/server.properties
sed -i "s/spawn-protection=16/spawn-protection=$spawn_protection/g" /mcfile/server.properties
sed -i "s/max-world-size=29999984/max-world-size=$max_world_size/g" /mcfile/server.properties

echo "Starting Minecraft Server"
/run_mc.sh