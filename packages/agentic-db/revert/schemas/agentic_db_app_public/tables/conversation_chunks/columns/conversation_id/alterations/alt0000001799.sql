-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/conversation_id/alterations/alt0000001799


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ALTER COLUMN conversation_id DROP NOT NULL;


