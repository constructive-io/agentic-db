-- Deploy: schemas/agentic_db_app_public/tables/sessions/constraints/sessions_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/sessions/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/embedding/column


ALTER TABLE "agentic_db_app_public".sessions 
  ADD CONSTRAINT sessions_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

