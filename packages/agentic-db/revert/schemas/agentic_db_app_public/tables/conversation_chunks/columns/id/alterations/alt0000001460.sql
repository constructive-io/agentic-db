-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/id/alterations/alt0000001460


ALTER TABLE "agentic_db_app_public".conversation_chunks 
  ALTER COLUMN id DROP NOT NULL;


