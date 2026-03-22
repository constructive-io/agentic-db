-- Deploy: schemas/agentic_db_app_public/tables/runtime_log_chunks/alterations/alt0000001419
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/table
-- requires: schemas/agentic_db_app_public/tables/runtime_state_chunks/triggers/runtime_state_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".runtime_log_chunks 
  DISABLE ROW LEVEL SECURITY;

