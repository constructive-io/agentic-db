-- Deploy: schemas/agentic_db_app_public/tables/memories/constraints/memories_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/memories/table
-- requires: schemas/agentic_db_app_public/tables/hiking_trails/indexes/hiking_trails_location_gist_idx


ALTER TABLE agentic_db_app_public.memories 
  ADD CONSTRAINT memories_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

