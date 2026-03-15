-- Revert: schemas/agent_db_app_public/tables/ideas/columns/source/column


ALTER TABLE agent_db_app_public.ideas 
  DROP COLUMN source RESTRICT;


