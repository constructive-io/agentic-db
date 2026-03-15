-- Revert: schemas/agent_db_app_public/tables/interactions/columns/tags/column


ALTER TABLE agent_db_app_public.interactions 
  DROP COLUMN tags RESTRICT;


