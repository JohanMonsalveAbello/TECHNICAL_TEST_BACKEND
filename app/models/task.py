from sqlalchemy import Column, Integer, String, DateTime
from datetime import datetime
from app.db.base import Base

class Task(Base):
    __tablename__ = "tasks"

    id = Column(Integer, primary_key=True)
    title = Column(String, index=True, nullable=False)
    description = Column(String, nullable=True)
    status = Column(String, index=True, default="pending")
    created_at = Column(DateTime, default=datetime.utcnow)
