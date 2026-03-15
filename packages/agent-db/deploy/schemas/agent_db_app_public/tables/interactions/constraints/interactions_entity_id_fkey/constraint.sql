-- Deploy: schemas/agent_db_app_public/tables/interactions/constraints/interactions_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/interactions/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/embedding/column


ALTER TABLE agent_db_app_public.interactions 
  ADD CONSTRAINT interactions_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agent_db_users_public.users (id) 
    ON DELETE CASCADE;

