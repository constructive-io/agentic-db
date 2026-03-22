-- Deploy: schemas/agentic_db_app_public/tables/agent_tasks/indexes/agent_tasks_agent_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/table
-- requires: schemas/agentic_db_app_public/tables/agent_tasks/columns/agent_id/column
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/triggers/skill_chunks_enqueue_embedding_update_tg


CREATE INDEX agent_tasks_agent_id_idx ON "agentic_db_app_public".agent_tasks USING BTREE ( agent_id );

