-- Deploy: schemas/agentic_db_app_public/tables/chats/constraints/chats_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/chats/table
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/execution_log/columns/duration_ms/column


ALTER TABLE "agentic_db_app_public".chats 
  ADD CONSTRAINT chats_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

