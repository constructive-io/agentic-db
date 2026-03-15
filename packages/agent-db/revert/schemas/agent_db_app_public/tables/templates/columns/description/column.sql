-- Revert: schemas/agent_db_app_public/tables/templates/columns/description/column


ALTER TABLE agent_db_app_public.templates 
  DROP COLUMN description RESTRICT;


