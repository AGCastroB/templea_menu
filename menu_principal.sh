#!/bin/bash

mkdir -p ./logs
fecha_actual=$(date +"%Y-%m-%d_%H-%M-%S")
usuario=$(whoami)
ip=$(who am i | awk '{print $5}' | tr -d '()')
logfile="./logs/log_${usuario}_${fecha_actual}.log"

# Registrar inicio de sesión
echo "===== SESIÓN INICIADA =====" >> "$logfile"
echo "Fecha/Hora : $(date)" >> "$logfile"
echo "Usuario    : $usuario" >> "$logfile"
echo "IP         : ${ip:-localhost}" >> "$logfile"
echo "=============================" >> "$logfile"
echo "=============================" >> "$logfile"
echo "" >> "$logfile"

while true; do
    clear
    echo "========== MENU PRINCIPAL Templea =========="
    echo "1) Templea CR"
    echo "2) Templea PTY"
    echo "3) Templea NI"
    echo "4) Versionamiento del programa"
    echo "5) Salir"
    echo "============================================"
    printf "Seleccione una opcion [1-5]: "
    read opcion

    case "$opcion" in
        1)
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Ejecutó menú Templea CR" >> "$logfile"
            cd /
            bash ./home/informa/bin/programa_templeas/CR/menu_templea_CR.sh
            ;;

        2)
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Ejecutó menú Templea PTY" >> "$logfile"
            cd /
            bash ./home/informa/bin/programa_templeas/PTY/menu_templea_PTY.sh
            ;;

        3)
            echo "[INFO] $(date '+%Y-%m-%d %H:%M:%S') - Ejecutó menú Templea NI" >> "$logfile"
            cd /
            bash ./home/informa/bin/programa_templeas/NI/menu_templea_NI.sh
            ;;

        4)

            echo ""
            echo ""
            echo "====================================================="
            echo "===================== Versiones ====================="
            echo "1.0 - ANDRES CASTRO BORGE -> Version original"
            echo "================== Modificaciones: =================="
            echo ""
            echo ""
            ;;
        
        5)

            echo "Saliendo del programa."
            echo ""
            echo "Gracias por usar mi programa"
            echo ""
            echo "AGCB"
            echo "" >> "$logfile"
            echo "===== SESIÓN FINALIZADA =====" >> "$logfile"
            echo "" >> "$logfile"

            break
            ;;

        *)
            echo "Opcion invalida. Intente de nuevo."
            ;;
    esac
    read -p "Presione Enter para continuar..."
done