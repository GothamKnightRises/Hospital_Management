# scripts/test_db.py
import sqlite3
from datetime import date
from pathlib import Path

# find repo root (one level up from scripts/)
REPO_ROOT = Path(__file__).resolve().parents[1]
DB = str(REPO_ROOT / "hospital.db")

def init_and_insert():
    conn = sqlite3.connect(DB)
    conn.execute("PRAGMA foreign_keys = ON;")
    cur = conn.cursor()

    # insert a sample patient
    cur.execute("""
        INSERT INTO patients (full_name, dob, gender, contact, address)
        VALUES (?, ?, ?, ?, ?)
    """, ("Test Patient", "1990-01-01", "Other", "9999999999", "123 Demo Street"))
    conn.commit()

    # fetch and print patients
    cur.execute("SELECT id, full_name, dob, contact, created_at FROM patients;")
    rows = cur.fetchall()
    for r in rows:
        print(r)

    conn.close()

if __name__ == "__main__":
    init_and_insert()
