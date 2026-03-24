-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/created_at/alterations/alt0000001445


ALTER TABLE "agentic_db_app_public".conversations_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


