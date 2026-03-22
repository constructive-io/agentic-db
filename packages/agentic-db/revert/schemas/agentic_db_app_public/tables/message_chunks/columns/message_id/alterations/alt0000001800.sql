-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/alterations/alt0000001800


ALTER TABLE "agentic_db_app_public".message_chunks 
  ALTER COLUMN message_id DROP NOT NULL;


