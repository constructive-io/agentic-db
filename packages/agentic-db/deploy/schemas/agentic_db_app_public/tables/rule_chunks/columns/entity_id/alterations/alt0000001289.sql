-- Deploy: schemas/agentic_db_app_public/tables/rule_chunks/columns/entity_id/alterations/alt0000001289
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/table
-- requires: schemas/agentic_db_app_public/tables/rule_chunks/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/agent_log_chunks/triggers/agent_log_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ALTER COLUMN entity_id SET NOT NULL;

