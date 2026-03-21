-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/updated_at/alterations/alt0000002557


ALTER TABLE "agentic_db_app_public".message_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


