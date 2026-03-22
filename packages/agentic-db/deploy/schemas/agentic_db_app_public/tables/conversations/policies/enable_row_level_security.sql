-- Deploy: schemas/agentic_db_app_public/tables/conversations/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/triggers/runtime_log_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".conversations 
  ENABLE ROW LEVEL SECURITY;

