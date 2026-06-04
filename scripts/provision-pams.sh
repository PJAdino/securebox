#!/bin/bash

# ── Install password quality module ──────────
sudo apt install -y libpam-pwquality

# ── Set password aging on human accounts ─────
sudo chage -M 30 -W 14 alex
sudo chage -M 30 -W 14 bob
sudo chage -M 30 -W 14 vekez

# ── Verification ─────────────────────────────
echo "──── Password aging — alex ────"
sudo chage -l alex
echo "──── Password aging — bob ────"
sudo chage -l bob
echo "──── Password aging — vekez ────"
sudo chage -l vekez
echo "──── Done ────"
