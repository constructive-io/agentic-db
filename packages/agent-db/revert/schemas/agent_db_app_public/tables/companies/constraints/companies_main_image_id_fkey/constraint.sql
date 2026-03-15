-- Revert: schemas/agent_db_app_public/tables/companies/constraints/companies_main_image_id_fkey/constraint


ALTER TABLE agent_db_app_public.companies 
  DROP CONSTRAINT companies_main_image_id_fkey;


