#!/bin/bash

pg_dz_lg() {
    case "$1" in
        no_device_matching) jv_warning "Aucun appareil ne correspond. Ajoutez le dans vos favoris Domoticz, ou declarez un incident si il s$
        switch_on) echo "J'ai allum� $2";;
        switch_off) echo "J'ai �teins $2";;
        blind_on) echo "J'ai ferm� $2";;
        blind_off) echo "J'ai ouvert $2";;
                stat) echo "Je regarde... $2:";;
                temp) echo "La temperature $2 est de:";;
        dim_up) echo "J'augmente de 10 $2";;
        dim_down) echo "Je diminue de 10 $2";;
        *) jv_error "ERROR: ";;
    esac
}

pg_dz_st() {
    case "$1" in
        On) echo "Allum�";;
        Off) echo "Eteins";;
        Closed) echo "Ferm�";;
        Open) echo "Ouvert";;
        *) jv_error "Etat inconnu. Signalez-le.";;
    esac
}