FROM amazoncorretto:21-alpine-jdk

ARG MCFILE=vanilla-1.21.5.jar

ENV min_mem=2G
ENV max_mem=2G
ENV enable_jmx_monitoring=false
ENV rcon_port=25575
ENV level_seed=""
ENV gamemode=survival
ENV enable_command_block=false
ENV enable_query=false
ENV generator_settings="{}"
ENV level_name=world
ENV motd="A Minecraft Server"
ENV query_port=25565
ENV pvp=true
ENV generate_structures=true
ENV max_chained_neighbor_updates=1000000
ENV difficulty=easy
ENV network_compression_threshold=256
ENV require_resource_pack=false
ENV max_tick_time=60000
ENV use_native_transport=true
ENV max_players=20
ENV online_mode=false
ENV enable_status=true
ENV allow_flight=false
ENV broadcast_rcon_to_ops=true
ENV view_distance=10
ENV server_ip=""
ENV resource_pack_prompt=""
ENV allow_nether=true
ENV server_port=25565
ENV enable_rcon=true
ENV sync_chunk_writes=true
ENV op_permission_level=4
ENV prevent_proxy_connections=false
ENV hide_online_players=false
ENV resource_pack=""
ENV entity_broadcast_range_percentage=100
ENV simulation_distance=10
ENV rcon_password='admin'
ENV player_idle_timeout=0
ENV force_gamemode=false
ENV rate_limit=0
ENV hardcore=false
ENV white_list=false
ENV broadcast_console_to_ops=true
ENV spawn_npcs=true
ENV spawn_animals=true
ENV function_permission_level=2
ENV level_type="minecraft\:normal"
ENV text_filtering_config=""
ENV spawn_monsters=true
ENV enforce_whitelist=false
ENV resource_pack_sha1=""
ENV spawn_protection=16
ENV max_world_size=29999984

ADD ./jars/${MCFILE} /server.jar
ADD ./run_mc.sh /run_mc.sh
ADD ./init.sh /init.sh
ADD ./reload_server_properties.sh /reload_server_properties.sh
ADD ./entrypoint.sh /entrypoint.sh

RUN apk upgrade --update
RUN chmod +x /init.sh
RUN chmod +x /run_mc.sh
RUN chmod +x /reload_server_properties.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]