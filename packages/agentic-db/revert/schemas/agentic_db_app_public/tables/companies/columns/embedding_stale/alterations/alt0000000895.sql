-- Revert: schemas/agentic_db_app_public/tables/companies/columns/embedding_stale/alterations/alt0000000895


ALTER TABLE "agentic_db_app_public".companies 
  ALTER COLUMN embedding_stale DROP NOT NULL;


