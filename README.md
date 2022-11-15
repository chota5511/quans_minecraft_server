# Quan's Minecraft Server
## Introduction
A very lightweight Minecraft Server for Docker container is based on [Amazon Corretto](https://hub.docker.com/_/amazoncorretto) and [PaperMC](https://papermc.io)

## Deployment
### Using Docker CLI commands 
```
       $ docker run \
              --name mc_test \
              -p 25565:25565 \
              -p 25575:25575 \
              -d chota5511/quans_mc_server
```

### Using Docker Compose (Recommended)
1. Create a `docker-compose.yml` file
```

```
2. Deploy docker-compose
From `docker-compose.yml` location folder run command bellow
```
       $ docker compose up
```

## Docker ENV
| ENV name | Default value | Description |
|---|---|---|
| min_mem | 2G | Minimum memory allocated for JVM |
| max_mem | 2G | Maximum memory will be allocate for JVM |

## Maping table for server.properties and default values
| server.properties | Default value | Docker ENV |
|---|---|---|
| enable-jmx-monitoring | false | enable_jmx_monitoring |
| rcon.port | 25575 | rcon_port |
| level-seed |  | level_seed |
| gamemode | survival | gamemode |
| enable-command-block | false | enable_command_block |
| enable-query | false | enable_query |
| generator-settings | {} | generator_settings |
| level-name | world | level_name |
| motd | A Minecraft Server | motd |
| query.port | 25565 | query_port |
| pvp | true | pvp |
| generate-structures | true | generate_structures |
| max-chained-neighbor-updates | 1000000 | max_chained_neighbor_updates |
| difficulty | easy | difficulty |
| network-compression-threshold | 256 | network_compression_threshold |
| require-resource-pack | false | require_resource_pack |
| max-tick-time | 60000 | max_tick_time |
| use-native-transport | true | use_native_transport |
| max-players | 20 | max_players |
| online-mode | true | online_mode |
| enable-status | true | enable_status |
| allow-flight | false | allow_flight |
| broadcast-rcon-to-ops | true | broadcast_rcon_to_ops |
| view-distance | 10 | view_distance |
| server-ip |  | server_ip |
| resource-pack-prompt |  | resource_pack_prompt |
| allow-nether | true | allow_nether |
| server-port | 25565 | server_port |
| enable-rcon | false | enable_rcon |
| sync-chunk-writes | true | sync_chunk_writes |
| op-permission-level | 4 | op_permission_level |
| prevent-proxy-connections | false | prevent_proxy_connections |
| hide-online-players | false | hide_online_players |
| resource-pack |  | resource_pack |
| entity-broadcast-range-percentage | 100 | entity_broadcast_range_percentage |
| simulation-distance | 10 | simulation_distance |
| rcon.password |  | rcon_password |
| player-idle-timeout | 0 | player_idle_timeout |
| force-gamemode | false | force_gamemode |
| rate-limit | 0 | rate_limit |
| hardcore | false | hardcore |
| white-list | false | white_list |
| broadcast-console-to-ops | true | broadcast_console_to_ops |
| spawn-npcs | true | spawn_npcs |
| spawn-animals | true | spawn_animals |
| function-permission-level | 2 | function_permission_level |
| level-type | minecraft\:normal | level_type |
| text-filtering-config |  | text_filtering_config |
| spawn-monsters | true | spawn_monsters |
| enforce-whitelist | false | enforce_whitelist |
| resource-pack-sha1 |  | resource_pack_sha1 |
| spawn-protection | 16 | spawn_protection |
| max-world-size | 29999984 | max_world_size |