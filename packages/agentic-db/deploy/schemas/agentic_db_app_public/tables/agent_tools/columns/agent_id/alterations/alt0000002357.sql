-- Deploy: schemas/agentic_db_app_public/tables/agent_tools/columns/agent_id/alterations/alt0000002357
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tools/table
-- requires: schemas/agentic_db_app_public/tables/agent_tools/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx


ALTER TABLE "agentic_db_app_public".agent_tools 
  ALTER COLUMN agent_id SET NOT NULL;

