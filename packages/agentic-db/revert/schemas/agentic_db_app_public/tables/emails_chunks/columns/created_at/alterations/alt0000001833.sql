-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/created_at/alterations/alt0000001833


ALTER TABLE "agentic_db_app_public".emails_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


