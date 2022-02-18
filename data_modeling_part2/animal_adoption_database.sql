-- animal : id, name, species, cost, vaccinations_complete, ready_for_adoption
-- animal_sepcies: id, name
-- vaccines: id, name, purpose
-- animal_species_vaccines_needed: id, species_id, vaccine_id
-- animal_needs_vaccine: id, animal_id, vaccine_id

CREATE TABLE animals (
    animal_id SERIAL PRIMARY KEY,
    animal_name VARCHAR(30) NOT NULL,
    animal_species INT NOT NULL REFERENCES animal_species(species_id),
    cost INT,
    vaccinations_complete BOOLEAN NOT NULL,
    ready_for_adoption BOOLEAN NOT NULL
);

CREATE TABLE animal_species (
    species_id SERIAL PRIMARY KEY,
    species_name VARCHAR(50) NOT NULL
);

CREATE TABLE vaccinations (
    vaccination_id SERIAL PRIMARY KEY,
    vaccination_name VARCHAR(100) NOT NULL,
    purpose VARCHAR(250) NOT NULL
);

CREATE TABLE species_vaccines_needed (
    species_vaccine_id SERIAL PRIMARY KEY,
    species_id INT NOT NULL REFERENCES animal_species(species_id),
    vaccination_id INT NOT NULL REFERENCES vaccinations(vaccination_id)
);

CREATE TABLE animal_needs_vaccine (
    animal_needs_vaccine_id SERIAL PRIMARY KEY,
    animal_id INT NOT NULL REFERENCES animals(animal_id),
    vaccination_id INT NOT NULL REFERENCES vaccinations(vaccination_id)
);

