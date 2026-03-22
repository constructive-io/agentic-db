-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/updated_at/alterations/alt0000001878


ALTER TABLE "agentic_db_app_public".contact_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


