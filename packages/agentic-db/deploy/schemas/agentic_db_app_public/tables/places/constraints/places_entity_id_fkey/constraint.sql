-- Deploy: schemas/agentic_db_app_public/tables/places/constraints/places_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/trips/indexes/trips_location_gist_idx


ALTER TABLE "agentic_db_app_public".places 
  ADD CONSTRAINT places_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

