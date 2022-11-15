#!/bin/sh

echo "Get Minecraft Server configurations from ENV"
sed -i "s/enable-jmx-monitoring\=.*/enable-jmx-monitoring=$enable_jmx_monitoring/g" /mcfile/server.properties
sed -i "s/rcon\.port\=.*/rcon.port=$rcon_port/g" /mcfile/server.properties
sed -i "s/level-seed\=.*/level-seed=$level_seed/g" /mcfile/server.properties
sed -i "s/gamemode\=.*/gamemode=$gamemode/g" /mcfile/server.properties
sed -i "s/enable-command-block\=.*/enable-command-block=$enable_command_block/g" /mcfile/server.properties
sed -i "s/enable-query\=.*/enable-query=$enable_query/g" /mcfile/server.properties
sed -i "s/generator-settings\=.*/generator-settings=$generator_settings/g" /mcfile/server.properties
sed -i "s/level-name\=.*/level-name=$level_name/g" /mcfile/server.properties
sed -i "s/motd\=.*/motd=$motd/g" /mcfile/server.properties
sed -i "s/query\.port\=.*/query.port=$query_port/g" /mcfile/server.properties
sed -i "s/pvp\=.*/pvp=$pvp/g" /mcfile/server.properties
sed -i "s/generate-structures\=.*/generate-structures=$generate_structures/g" /mcfile/server.properties
sed -i "s/max-chained-neighbor-updates\=.*/max-chained-neighbor-updates=$max_chained_neighbor_updates/g" /mcfile/server.properties
sed -i "s/difficulty\=.*/difficulty=$difficulty/g" /mcfile/server.properties
sed -i "s/network-compression-threshold\=.*/network-compression-threshold=$network_compression_threshold/g" /mcfile/server.properties
sed -i "s/require-resource-pack\=.*/require-resource-pack=$require_resource_pack/g" /mcfile/server.properties
sed -i "s/max-tick-time\=.*/max-tick-time=$max_tick_time/g" /mcfile/server.properties
sed -i "s/use-native-transport\=.*/use-native-transport=$use_native_transport/g" /mcfile/server.properties
sed -i "s/max-players\=.*/max-players=$max_players/g" /mcfile/server.properties
sed -i "s/online-mode\=.*/online-mode=$online_mode/g" /mcfile/server.properties
sed -i "s/enable-status\=.*/enable-status=$enable_status/g" /mcfile/server.properties
sed -i "s/allow-flight\=.*/allow-flight=$allow_flight/g" /mcfile/server.properties
sed -i "s/broadcast-rcon-to-ops\=.*/broadcast-rcon-to-ops=$broadcast_rcon_to_ops/g" /mcfile/server.properties
sed -i "s/view-distance\=.*/view-distance=$view_distance/g" /mcfile/server.properties
sed -i "s/server-ip\=.*/server-ip=$server_ip/g" /mcfile/server.properties
sed -i "s/resource-pack-prompt\=.*/resource-pack-prompt=$resource_pack_prompt/g" /mcfile/server.properties
sed -i "s/allow-nether\=.*/allow-nether=$allow_nether/g" /mcfile/server.properties
sed -i "s/server-port\=.*/server-port=$server_port/g" /mcfile/server.properties
sed -i "s/enable-rcon\=.*/enable-rcon=$enable_rcon/g" /mcfile/server.properties
sed -i "s/sync-chunk-writes\=.*/sync-chunk-writes=$sync_chunk_writes/g" /mcfile/server.properties
sed -i "s/op-permission-level\=.*/op-permission-level=$op_permission_level/g" /mcfile/server.properties
sed -i "s/prevent-proxy-connections\=.*/prevent-proxy-connections=$prevent_proxy_connections/g" /mcfile/server.properties
sed -i "s/hide-online-players\=.*/hide-online-players=$hide_online_players/g" /mcfile/server.properties
sed -i "s/resource-pack\=.*/resource-pack=$resource_pack/g" /mcfile/server.properties
sed -i "s/entity-broadcast-range-percentage\=.*/entity-broadcast-range-percentage=$entity_broadcast_range_percentage/g" /mcfile/server.properties
sed -i "s/simulation-distance\=.*/simulation-distance=$simulation_distance/g" /mcfile/server.properties
sed -i "s/rcon\.password\=.*/rcon.password=$rcon_password/g" /mcfile/server.properties
sed -i "s/player-idle-timeout\=.*/player-idle-timeout=$player_idle_timeout/g" /mcfile/server.properties
sed -i "s/force-gamemode\=.*/force-gamemode=$force_gamemode/g" /mcfile/server.properties
sed -i "s/rate-limit\=.*/rate-limit=$rate_limit/g" /mcfile/server.properties
sed -i "s/hardcore\=.*/hardcore=$hardcore/g" /mcfile/server.properties
sed -i "s/white-list\=.*/white-list=$white_list/g" /mcfile/server.properties
sed -i "s/broadcast-console-to-ops\=.*/broadcast-console-to-ops=$broadcast_console_to_ops/g" /mcfile/server.properties
sed -i "s/spawn-npcs\=.*/spawn-npcs=$spawn_npcs/g" /mcfile/server.properties
sed -i "s/spawn-animals\=.*/spawn-animals=$spawn_animals/g" /mcfile/server.properties
sed -i "s/function-permission-level\=.*/function-permission-level=$function_permission_level/g" /mcfile/server.properties
sed -i "s/level-type\=.*/level-type=$level_type/g" /mcfile/server.properties
sed -i "s/text-filtering-config\=.*/text-filtering-config=$text_filtering_config/g" /mcfile/server.properties
sed -i "s/spawn-monsters\=.*/spawn-monsters=$spawn_monsters/g" /mcfile/server.properties
sed -i "s/enforce-whitelist\=.*/enforce-whitelist=$enforce_whitelist/g" /mcfile/server.properties
sed -i "s/resource-pack-sha1\=.*/resource-pack-sha1=$resource_pack_sha1/g" /mcfile/server.properties
sed -i "s/spawn-protection\=.*/spawn-protection=$spawn_protection/g" /mcfile/server.properties
sed -i "s/max-world-size\=.*/max-world-size=$max_world_size/g" /mcfile/server.properties