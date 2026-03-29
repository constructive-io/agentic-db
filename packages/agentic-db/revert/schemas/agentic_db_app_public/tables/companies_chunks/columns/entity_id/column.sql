-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.companies_chunks 
  DROP COLUMN entity_id RESTRICT;


