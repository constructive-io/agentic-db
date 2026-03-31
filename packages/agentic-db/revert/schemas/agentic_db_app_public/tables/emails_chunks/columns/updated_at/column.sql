-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP COLUMN updated_at RESTRICT;


