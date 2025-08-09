#!/usr/bin/env bash
export $(cat .env | xargs) 2>/dev/null || true
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
