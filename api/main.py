from fastapi import FastAPI

import api
from api.routers import task, done

app = FastAPI()
app.include_router(task.router)
app.include_router(done.router)
