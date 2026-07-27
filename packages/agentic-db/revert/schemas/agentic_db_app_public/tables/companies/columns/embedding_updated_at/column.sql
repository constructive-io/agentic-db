-- Revert: schemas/agentic_db_app_public/tables/companies/columns/embedding_updated_at/column


ALTER TABLE agentic_db_app_public.companies 
  DROP COLUMN embedding_updated_at RESTRICT;


