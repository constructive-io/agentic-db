-- Revert: schemas/agent_db_app_public/tables/templates/columns/name/alterations/alt0000001559


ALTER TABLE agent_db_app_public.templates 
  ALTER COLUMN name DROP NOT NULL;


