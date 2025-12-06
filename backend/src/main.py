from fastapi import FastAPI
import os

app = FastAPI()
# API_KEY = os.environ.get("API_KEY")

# if not API_KEY:
#     raise NotImplimentedError("`api key` was not set")
@app.get("/")
def read_index():
    return {"hello":"world again!"}

#current video timestap is 1:44