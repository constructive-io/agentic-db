-- Revert: schemas/agentic_db_app_public/tables/companies_chunks/columns/entity_id/alterations/alt0000005250


ALTER TABLE agentic_db_app_public.companies_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


