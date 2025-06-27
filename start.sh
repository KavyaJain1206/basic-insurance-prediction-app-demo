#!/bin/bash

# Start FastAPI backend on port 8000
uvicorn app:app --host 0.0.0.0 --port 8000 &

# Start Streamlit frontend on Render's default port (10000)
streamlit run frontend.py --server.port 10000 --server.enableCORS false
