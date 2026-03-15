-- Revert: schemas/agent_db_app_public/tables/templates/columns/tags/column


ALTER TABLE agent_db_app_public.templates 
  DROP COLUMN tags RESTRICT;


