#Fonction pour commander un dimmer  http://192.168.0.20:8090/json.htm?type=command&param=switchlight&idx=6&switchcmd=Set%20Level&level=20
pg_dz_dim () {
local api="${pg_dz_domoticz_secure}://${pg_dz_domoticz_ip}:${pg_dz_domoticz_port}/json.htm?type=command&param=switchlight"

pg_dz_idx $2

local idx=$?
if [ $idx != 0 ]; then

        if [ "$type" == "Scene" ] || [ "$type" == "Group" ]; then
        level=$( curl -s  "http://192.168.0.20:8090/json.htm?type=devices&rid=${idx}"| jq -r .result[].Level)
        status=$( curl -s  "http://192.168.0.20:8090/json.htm?type=devices&rid=${idx}"| jq '.result[].Status')
        if [[ "$status" =~ "Off" ]]; then
                say "He coco c'est éteint"
                return 0
                else
                        if [ $level -le 10 ] && [ $3 -eq -10 ]; then
                        say "He non je peux plus baisser"
                        return 0
                        fi
                level=$((level + $3))
                jv_curl "${api}&idx=${idx}&switchcmd=Set%20Level&level=${level}"
                say "$(pg_dz_lg "dim_$1" "$device")"
        fi
else
        level=$( curl -s  "http://192.168.0.20:8090/json.htm?type=devices&rid=${idx}"| jq -r .result[].Level)
        status=$( curl -s  "http://192.168.0.20:8090/json.htm?type=devices&rid=${idx}"| jq '.result[].Status')
        if [[ "$status" =~ "Off" ]]; then
                say "He coco c'est éteint"
                return 0
                else
                        if [ $level -le 10 ] && [ $3 -eq -10 ]; then
                        say "He non je peux plus baisser"
                        return 0
                        fi
                level=$((level + $3))
                jv_curl "${api}&idx=${idx}&switchcmd=Set%20Level&level=${level}"
                say "$(pg_dz_lg "dim_$1" "$device")"
                fi
        fi
else
return 0
fi
}
