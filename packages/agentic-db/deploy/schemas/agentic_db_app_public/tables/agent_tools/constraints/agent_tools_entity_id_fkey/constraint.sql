-- Deploy: schemas/agentic_db_app_public/tables/agent_tools/constraints/agent_tools_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/agent_tools/table
-- requires: schemas/agentic_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx


ALTER TABLE "agentic_db_app_public".agent_tools 
  ADD CONSTRAINT agent_tools_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agentic_db_users_public".users (id) 
    ON DELETE CASCADE;

