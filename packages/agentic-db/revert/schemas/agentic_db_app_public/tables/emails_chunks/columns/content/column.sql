-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP COLUMN content RESTRICT;


