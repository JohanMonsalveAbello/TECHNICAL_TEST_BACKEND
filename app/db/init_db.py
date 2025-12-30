from app.db.session import SessionLocal
from app.models.user import User
from app.core.security import hash_password

def init():
    db = SessionLocal()
    if not db.query(User).first():
        user = User(
            email="admin@test.com",
            password=hash_password("admin123")
        )
        db.add(user)
        db.commit()
    db.close()
