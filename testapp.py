from fastapi import FastAPI
import socket

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello DevOps!", "hostname": socket.gethostname()}

@app.get("/health")
def health():
    return {"status": "ok"}