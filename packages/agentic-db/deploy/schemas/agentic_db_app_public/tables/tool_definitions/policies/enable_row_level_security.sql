-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/policies/enable_row_level_security
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/message_chunks/triggers/message_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".tool_definitions 
  ENABLE ROW LEVEL SECURITY;

