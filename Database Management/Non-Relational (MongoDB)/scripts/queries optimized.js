// Query 1 Optimized
const start1_opt = Date.now();

const result1_opt = db.medical_records.find(
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

const end1_opt = Date.now();
print("Optimized execution time in milliseconds:", end1_opt - start1_opt);
printjson(result1_opt);

// Query 2 Optimized
const start2_opt = Date.now();

const result2_opt = db.fitness_data.aggregate([
  { $group: { _id: "$Brand Name", avgRating: { $avg: "$Rating (Out of 5)" } } },
  { $sort: { avgRating: -1 } }
]).toArray();

const end2_opt = Date.now();
print("Optimized execution time in milliseconds:", end2_opt - start2_opt);
printjson(result2_opt);

// Query 3 Optimized
const start3_opt = Date.now();

const result3_opt = db.fitness_data.find(
  {},
  {
    _id: 0,
    "Brand Name": 1,
    "Model Name": 1,
    "Average Battery Life (in days)": 1
  }
).sort({ "Average Battery Life (in days)": -1 }).toArray();

const end3_opt = Date.now();
print("Optimized execution time in milliseconds:", end3_opt - start3_opt);
printjson(result3_opt);
