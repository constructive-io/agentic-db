-- Deploy: schemas/agentic_db_app_public/tables/calendars/constraints/calendars_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx


ALTER TABLE "agentic_db_app_public".calendars 
  ADD CONSTRAINT calendars_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

