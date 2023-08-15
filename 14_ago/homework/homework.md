# Homework
### Dentis appointments

``````dbml
Table dentist {
  dentist_id integer [primary key]
  name varchar
  created_at timestamp 
  appointments array[integer] 
}

Table patient {
  patient_id integer [primary key]
  name varchar
  created_at timestamp
  appointments array[integer] 
}

Table appointment {
  appointment_id integer [primary key]
  schedule date
  created_at timestamp
}

Ref: dentist.appointments < appointment.appointment_id
Ref: patient.appointments < appointment.appointment_id

``````