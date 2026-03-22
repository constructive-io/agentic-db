-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".contact_chunks 
  DROP COLUMN created_at RESTRICT;


