-- Revert: schemas/agent_db_app_public/tables/templates/columns/embedding/column


ALTER TABLE agent_db_app_public.templates 
  DROP COLUMN embedding RESTRICT;


