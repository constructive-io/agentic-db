-- Deploy: schemas/agent_db_app_public/tables/blueprints/constraints/blueprints_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/embedding/column


ALTER TABLE "agent_db_app_public".blueprints 
  ADD CONSTRAINT blueprints_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

