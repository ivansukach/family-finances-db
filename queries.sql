INSERT INTO family_members VALUES (1, 'Ivan', 'Sukach', 'Uladzimirovich')

INSERT INTO currency_rates VALUES ('USD', 2.556, 1);
INSERT INTO currency_rates VALUES ('$', 2.556, 2);

INSERT INTO transfer_type VALUES ('Scholarship', 'Scholarship for studying at the university', true);
INSERT INTO transfer_type VALUES ('Salary', 'Salary for work in the company octa-coin.com', true);

INSERT INTO transfer VALUES (1, 1603370569, true, 50, 'Scholarship', '$', 1);
INSERT INTO transfer VALUES (1, 1603379569, true, 225, 'Salary', 'USD', 1);