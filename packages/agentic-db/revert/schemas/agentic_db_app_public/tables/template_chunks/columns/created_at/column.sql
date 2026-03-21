-- Revert: schemas/agentic_db_app_public/tables/template_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".template_chunks 
  DROP COLUMN created_at RESTRICT;


