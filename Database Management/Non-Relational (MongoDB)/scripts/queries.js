// Query 1: Patients with a tracker and no recent appointment
const start1 = Date.now();

const result1 = db.medical_records.find(
  {
    "last_appointment_date": { $lt: "1/1/2023" },
    "Tracker": { $ne: null }
  },
  {
    _id: 0,
    patient_id: 1,
    name: 1,
    last_appointment_date: 1,
    Tracker: 1
  }
).toArray();

const end1 = Date.now();
print("Execution time in milliseconds:", end1 - start1);
printjson(result1);

// Query 2: Average rating by brand
const start2 = Date.now();

const result2 = db.fitness_data.aggregate([
  { $group: { _id: "$Brand Name", avgRating: { $avg: "$Rating (Out of 5)" } } },
  { $sort: { avgRating: -1 } }
]).toArray();

const end2 = Date.now();
print("Execution time in milliseconds:", end2 - start2);
printjson(result2);

// Query 3: Devices with longest average battery life
const start3 = Date.now();

const result3 = db.fitness_data.find(
  {},
  {
    _id: 0,
    "Brand Name": 1,
    "Model Name": 1,
    "Average Battery Life (in days)": 1
  }
).sort({ "Average Battery Life (in days)": -1 }).toArray();

const end3 = Date.now();
print("Execution time in milliseconds:", end3 - start3);
printjson(result3);
