-- Deploy: schemas/agentic_db_app_public/tables/conversation_chunks/columns/conversation_id/alterations/alt0000001507
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/table
-- requires: schemas/agentic_db_app_public/tables/conversation_chunks/columns/conversation_id/column
-- requires: schemas/agentic_db_app_public/tables/runtime_log_chunks/indexes/runtime_log_chunks_runtime_log_id_idx


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ALTER COLUMN conversation_id SET NOT NULL;

