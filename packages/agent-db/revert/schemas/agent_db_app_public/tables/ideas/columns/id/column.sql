-- Revert: schemas/agent_db_app_public/tables/ideas/columns/id/column


ALTER TABLE agent_db_app_public.ideas 
  DROP COLUMN id RESTRICT;


