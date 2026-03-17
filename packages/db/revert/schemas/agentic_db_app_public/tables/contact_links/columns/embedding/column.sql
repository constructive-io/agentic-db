-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/embedding/column


ALTER TABLE "agentic_db_app_public".contact_links 
  DROP COLUMN embedding RESTRICT;


