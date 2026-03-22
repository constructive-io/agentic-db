-- Revert: schemas/agentic_db_app_public/tables/companies/columns/embedding_stale/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN embedding_stale RESTRICT;


