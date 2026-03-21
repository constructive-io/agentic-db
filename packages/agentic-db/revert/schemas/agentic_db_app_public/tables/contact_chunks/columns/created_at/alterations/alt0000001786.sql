-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/created_at/alterations/alt0000001786


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


