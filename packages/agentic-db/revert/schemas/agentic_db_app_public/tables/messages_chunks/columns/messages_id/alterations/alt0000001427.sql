-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/messages_id/alterations/alt0000001427


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ALTER COLUMN messages_id DROP NOT NULL;


