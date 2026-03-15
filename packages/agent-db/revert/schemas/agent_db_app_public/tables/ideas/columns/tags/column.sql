-- Revert: schemas/agent_db_app_public/tables/ideas/columns/tags/column


ALTER TABLE agent_db_app_public.ideas 
  DROP COLUMN tags RESTRICT;


