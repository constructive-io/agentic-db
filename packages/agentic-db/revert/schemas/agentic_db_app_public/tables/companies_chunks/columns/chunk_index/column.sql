-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/chunk_index/column


ALTER TABLE agentic_db_app_public.companies_chunks 
  DROP COLUMN chunk_index RESTRICT;


