-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/created_at/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP COLUMN created_at RESTRICT;


