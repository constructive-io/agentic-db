-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/conversation_id/alterations/alt0000001453
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/table
-- requires: schemas/agentic_db_app_public/tables/messages/columns/conversation_id/column
-- requires: schemas/agentic_db_app_public/tables/messages/columns/updated_at/alterations/alt0000001452


ALTER TABLE "agentic_db_app_public".messages 
  ALTER COLUMN conversation_id SET NOT NULL;

