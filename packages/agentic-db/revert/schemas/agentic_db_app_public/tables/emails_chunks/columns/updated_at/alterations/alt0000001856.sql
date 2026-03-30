-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/updated_at/alterations/alt0000001856


ALTER TABLE "agentic_db_app_public".emails_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


