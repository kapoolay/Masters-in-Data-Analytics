// medical_records collection
db.medical_records.createIndex({ last_appointment_date: 1 });
db.medical_records.createIndex({ Tracker: 1 });

// fitness_data collection
db.fitness_data.createIndex({ "Brand Name": 1 });
db.fitness_data.createIndex({ "Rating (Out of 5)": 1 });
db.fitness_data.createIndex({ "Average Battery Life (in days)": -1 });
