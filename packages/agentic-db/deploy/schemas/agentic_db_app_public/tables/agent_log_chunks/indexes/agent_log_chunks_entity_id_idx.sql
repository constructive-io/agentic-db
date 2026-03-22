-- Deploy: schemas/agentic_db_app_public/tables/agent_log_chunks/indexes/agent_log_chunks_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_task_chunks/triggers/agent_task_chunks_enqueue_embedding_update_tg


CREATE INDEX agent_log_chunks_entity_id_idx ON "agentic_db_app_public".agent_log_chunks USING BTREE ( entity_id );

