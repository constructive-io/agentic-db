-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/emails_id/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP COLUMN emails_id RESTRICT;


