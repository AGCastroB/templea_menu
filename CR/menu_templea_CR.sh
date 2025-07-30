#!/bin/bash


logfile="./home/informa/bin/programa_templeas/logs/log_${usuario}_${fecha_actual}.log"

while true; do
    clear
    echo "========== SUBMENU Templea CR =========="
    echo "1) Cargar nueva data"
    echo "2) Actualizar la data actual"
    echo "3) Reversar carga actual"
    echo "4) Volver al menu principal"
    echo "5) Salir"
    echo "========================================"
    printf "Seleccione una opcion [1-5]: "
    read opcion

    case "$opcion" in
        1)

            echo "========= DENTRO DE TEMPLEA CR =========" >> "$logfile"
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Ejecutó el shell para la carga" >> "$logfile"
            echo "Se procedera a cargar un nuevo periodo de templea"
            sh /Shells/carga_templea.sh
            ;;

        2)

            echo "========= DENTRO DE TEMPLEA CR =========" >> "$logfile"
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Ejecutó el shell para actualizar la carga actual" >> "$logfile"
            echo "Se procedera a cactualizar la data actual de templea"
            sh /Shells/actualizar_carga_actual_CR.sh
            ;;

        3)

            echo "========= DENTRO DE TEMPLEA CR =========" >> "$logfile"
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Ejecutó el shell para reversar la carga actual" >> "$logfile"
            echo "Se procedera a reversar la carga actual de templea"
            sh /Shells/revertir_carga_CR.sh
            ;;

        4)

            echo "========= DENTRO DE TEMPLEA CR =========" >> "$logfile"
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Vuelve al menu principal" >> "$logfile"
            echo "Volviendo al menu principal"
            break
            ;;

        5)

            echo "========= DENTRO DE TEMPLEA CR =========" >> "$logfile"
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Sale del sistema" >> "$logfile"
            echo "" >> "$logfile"
            echo "===== SESIÓN FINALIZADA =====" >> "$logfile"
            echo "" >> "$logfile"
            echo "Saliendo del sistema"

            exit
            ;;

        *)
            echo "Opcion invalida. Intente de nuevo."
            ;;
    
    esac
    read -p "Presione Enter para continuar..."
done