-- Deploy: schemas/agent_db_app_public/tables/notes/constraints/notes_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/venues/columns/main_image_id/column


ALTER TABLE agent_db_app_public.notes 
  ADD CONSTRAINT notes_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

