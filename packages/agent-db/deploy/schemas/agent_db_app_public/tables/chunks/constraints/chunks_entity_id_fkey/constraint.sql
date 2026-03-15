-- Deploy: schemas/agent_db_app_public/tables/chunks/constraints/chunks_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_users_public/tables/users/table
-- requires: schemas/agent_db_app_public/tables/files/columns/hash/column


ALTER TABLE "agent_db_app_public".chunks 
  ADD CONSTRAINT chunks_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent_db_users_public".users (id) 
    ON DELETE CASCADE;

