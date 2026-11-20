symptom(fever, high_temperature).
symptom(fever, headache).
symptom(fever, body_pain).

symptom(cold, sneezing).
symptom(cold, cough).
symptom(cold, runny_nose).

symptom(malaria, fever).
symptom(malaria, chills).
symptom(malaria, sweating).

symptom(dengue, fever).
symptom(dengue, headache).
symptom(dengue, skin_rash).

diagnosis(Patient, Disease) :-
    has_symptom(Patient, Symptom),
    symptom(Disease, Symptom).

has_symptom(sanjay, fever).
has_symptom(sanjay, headache).
has_symptom(sanjay, body_pain).

has_symptom(rahul, sneezing).
has_symptom(rahul, cough).
has_symptom(rahul, runny_nose).

has_symptom(arun, chills).
has_symptom(arun, sweating).
has_symptom(arun, fever).