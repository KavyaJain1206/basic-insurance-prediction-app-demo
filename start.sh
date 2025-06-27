#!/bin/bash

# Start FastAPI backend on internal port (8000)
uvicorn app:app --host 0.0.0.0 --port 8000 &

# Start Streamlit frontend on public port (default 10000 on Render)
streamlit run frontend.py --server.port 10000 --server.address 0.0.0.0 --server.enableCORS false
