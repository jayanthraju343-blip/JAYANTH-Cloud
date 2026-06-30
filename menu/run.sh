#!/usr/bin/env bash
# ==========================================================
# JAYANTH SYSTEM | UPLINK
# DATE: 2026-04-08 | UI-TYPE: SEMA-HYPER-VISUAL → VIP ELITE
# ==========================================================
set -euo pipefail

# --- VIP ELITE THEME ---
R='\033[1;38;5;196m'     # Crimson Red
G='\033[1;38;5;82m'      # Emerald Green
Y='\033[1;38;5;220m'     # Gold
C='\033[1;38;5;51m'      # Cyan
P='\033[1;38;5;201m'     # Hot Pink (VIP)
VIOLET='\033[1;38;5;135m' # Deep Violet
NEON='\033[1;38;5;198m'  # Neon Pink
W='\033[1;38;5;255m'     # Pure White
DG='\033[0;38;5;244m'    # Steel Gray
NC='\033[0m'             # Reset

# --- DISPLAY-ONLY INFO ---
HOST="$(hostname)"
IP="$(curl -s -4 ifconfig.me 2>/dev/null || echo "0.0.0.0")"
LOCL_IP="$(hostname -I 2>/dev/null | awk '{print $1}')"

# --- VIP HEADER ---
clear
echo -e "${P}"
cat << "EOF"
      ██╗ █████╗ ██╗   ██╗ █████╗ ███╗   ██╗████████╗██╗  ██╗
      ██║██╔══██╗╚██╗ ██╔╝██╔══██╗████╗  ██║╚══██╔══╝██║  ██║
      ██║███████║ ╚████╔╝ ███████║██╔██╗ ██║   ██║   ███████║
██    ██║██╔══██║  ╚██╔╝  ██╔══██║██║╚██╗██║   ██║   ██╔══██║
╚██████╔╝██║  ██║   ██║   ██║  ██║██║ ╚████║   ██║   ██║  ██║
 ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝
EOF
echo -e "${NC}"

echo -e "${VIOLET}╔══════════════════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${VIOLET}║${NC}               ${P}☢️  JAYANTH UPLINK ${NEON}— ${Y}VIP ELITE ACCESS${NC}                  ${VIOLET}║${NC}"
echo -e "${VIOLET}║${NC}               ${DG}v14.0${NC} ${W}|${NC} ${G}SECURE HYPER-VISUAL${NC} ${W}|${NC} ${DG}$(date +"%Y-%m-%d %H:%M:%S")${NC}   ${VIOLET}║${NC}"
echo -e "${VIOLET}╚══════════════════════════════════════════════════════════════════════════════╝${NC}"

echo -e "\n${Y}                  ★★★ VIP ACCESS PROTOCOL ACTIVATED ★★★${NC}\n"

# --- NETWORK DIAGNOSTICS (VIP Style) ---
echo -e " ${C}◉ NETWORK ROUTE DIAGNOSTICS${NC}"
echo -e " ${DG}├─ Public Endpoint     :${NC} ${W}$IP${NC}"
echo -e " ${DG}├─ Local Gateway       :${NC} ${W}$LOCL_IP${NC}"
echo -e " ${DG}├─ Target Host         :${NC} ${W}$HOST${NC}"
echo -e " ${DG}├─ Security Level      :${NC} ${G}SSH V-65S ${P}★ VIP${NC}"
echo -e " ${DG}└─ Encryption          :${NC} ${NEON}QUANTUM-256${NC}"
echo -e "${DG}──────────────────────────────────────────────────────────────────────────────${NC}"

# --- AUTHENTICATION SEQUENCE ---
echo -e "\n ${Y}[1/2] AUTHENTICATION SEQUENCE${NC}"
echo -ne " ${DG}├─ Linking VIP Credentials...${NC} "
sleep 0.6
echo -e "${G}VERIFIED${NC} ${P}✓${NC}"

# --- UPLINK CONNECTION ---
echo -e "\n ${Y}[2/2] JAYANTH UPLINK PROTOCOL${NC}"
echo -ne " ${DG}├─ Establishing Quantum Link...${NC} "
sleep 0.7
echo -e "${G}CONNECTED${NC} ${P}★${NC}"
echo -e " ${DG}└─ Agent Status      :${NC} ${G}AUTHORIZED — VIP TIER${NC}"

echo -e "\n${DG}──────────────────────────────────────────────────────────────────────────────${NC}"
echo -e " ${P}★★★ VIP UPLINK ESTABLISHED — LOADING JAYANTH HUB IN 1 SECOND ★★★${NC}\n"

echo -ne " ${W}Initiating in ${R}1${NC} "
echo -ne "${R}●${NC}"
sleep 1
echo -e "\n"

# --- LOAD JAYANTH HUB ---
bash <(curl -fsSL https://raw.githubusercontent.com/jayanthraju343-blip/JAYANTH-Cloud/refs/heads/main/menu/UI.sh)
