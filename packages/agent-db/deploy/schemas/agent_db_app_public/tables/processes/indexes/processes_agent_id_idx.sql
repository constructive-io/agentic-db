-- Deploy: schemas/agent_db_app_public/tables/processes/indexes/processes_agent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/agent_id/column
-- requires: schemas/agent_db_app_public/tables/threads/indexes/threads_parent_thread_id_idx


CREATE INDEX processes_agent_id_idx ON "agent_db_app_public".processes USING BTREE ( agent_id );

