-- db/schema-sqlite.sql - SQLite version of schema
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password_hash TEXT NOT NULL,
  role TEXT NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS patients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  full_name TEXT NOT NULL,
  dob DATE,
  gender TEXT,
  contact TEXT,
  address TEXT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS appointments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  patient_id INTEGER,
  doctor_id INTEGER,
  scheduled_at DATETIME NOT NULL,
  reason TEXT,
  status TEXT DEFAULT 'scheduled',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(patient_id) REFERENCES patients(id) ON DELETE SET NULL,
  FOREIGN KEY(doctor_id)  REFERENCES users(id)    ON DELETE SET NULL
);
