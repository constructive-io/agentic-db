-- Deploy: schemas/agentic_db_app_public/tables/venues/constraints/venues_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/events/alterations/alt0000005587


ALTER TABLE agentic_db_app_public.venues 
  ADD CONSTRAINT venues_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

