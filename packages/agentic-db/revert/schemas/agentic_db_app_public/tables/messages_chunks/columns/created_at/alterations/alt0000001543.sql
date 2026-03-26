-- Revert: schemas/agentic_db_app_public/tables/messages_chunks/columns/created_at/alterations/alt0000001543


ALTER TABLE "agentic_db_app_public".messages_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


