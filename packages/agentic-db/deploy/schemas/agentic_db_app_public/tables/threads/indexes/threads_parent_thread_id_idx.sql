-- Deploy: schemas/agentic_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/threads/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/parent_thread_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_spawns/indexes/agent_spawns_agent_id_idx


CREATE INDEX threads_parent_thread_id_idx ON "agentic_db_app_public".threads USING BTREE ( parent_thread_id );

