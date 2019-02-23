#!/bin/bash

pg_dz_lg() {
    case "$1" in
        no_device_matching) jv_warning "Aucun appareil ne correspond. Ajoutez le dans vos favoris Domoticz, ou declarez un incident si il s$
        dim_up) echo "J'augmente de 10 $2";;
        dim_down) echo "Je diminue de 10 $2";;
        *) jv_error "ERROR: ";;
    esac
}

