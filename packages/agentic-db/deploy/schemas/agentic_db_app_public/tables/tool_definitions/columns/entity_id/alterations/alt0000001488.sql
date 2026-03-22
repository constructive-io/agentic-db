-- Deploy: schemas/agentic_db_app_public/tables/tool_definitions/columns/entity_id/alterations/alt0000001488
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/table
-- requires: schemas/agentic_db_app_public/tables/tool_definitions/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/message_chunks/triggers/message_chunks_enqueue_embedding_update_tg


ALTER TABLE "agentic_db_app_public".tool_definitions 
  ALTER COLUMN entity_id SET NOT NULL;

