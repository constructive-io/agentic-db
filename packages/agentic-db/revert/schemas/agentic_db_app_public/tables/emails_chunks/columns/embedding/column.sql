-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DROP COLUMN embedding RESTRICT;


