-- Revert: schemas/agentic_db_app_public/tables/companies/constraints/companies_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.companies 
  DROP CONSTRAINT companies_entity_id_fkey;


