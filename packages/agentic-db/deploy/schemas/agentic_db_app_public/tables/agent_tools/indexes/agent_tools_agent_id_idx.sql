-- Deploy: schemas/agentic_db_app_public/tables/agent_tools/indexes/agent_tools_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tools/table
-- requires: schemas/agentic_db_app_public/tables/agent_tools/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx


CREATE INDEX agent_tools_agent_id_idx ON "agentic_db_app_public".agent_tools USING BTREE ( agent_id );

