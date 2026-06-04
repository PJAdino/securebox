# Part 1 — Identity Layer

Established the identity foundation on a fresh Ubuntu Server. Created six accounts with deliberate properties — three human accounts (alex, bob, vekez) with UIDs above 1000, real shells, and home directories. Three service accounts (nginx, backendapp, db) with UIDs below 1000, nologin shells, and no home directories.

Key learning: Linux identity is purely numerical. The distinction between people and processes must be enforced at account creation time through the correct flags.
