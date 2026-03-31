-- Revert: schemas/agentic_db_app_public/tables/companies/columns/entity_id/alterations/alt0000003006


ALTER TABLE agentic_db_app_public.companies 
  ALTER COLUMN entity_id DROP NOT NULL;


