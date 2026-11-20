diet(diabetes, 'Vegetables, whole grains, pulses').
diet(hypertension, 'Fruits, vegetables, low sodium foods').
diet(obesity, 'Vegetables, fruits, high fiber foods').
diet(anemia, 'Spinach, beans, iron rich foods').
diet(heart_disease, 'Whole grains, nuts, vegetables').
diet(fever, 'Water, soups, easily digestible foods').

suggest_diet(Disease) :-
    diet(Disease, Food),
    write('Disease: '),
    write(Disease),
    nl,
    write('Recommended Diet: '),
    write(Food),
    nl.