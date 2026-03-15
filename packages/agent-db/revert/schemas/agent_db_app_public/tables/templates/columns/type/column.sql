-- Revert: schemas/agent_db_app_public/tables/templates/columns/type/column


ALTER TABLE agent_db_app_public.templates 
  DROP COLUMN type RESTRICT;


