-- Revert: schemas/agentic_db_app_public/tables/companies/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".companies 
  DROP COLUMN embedding_text RESTRICT;


