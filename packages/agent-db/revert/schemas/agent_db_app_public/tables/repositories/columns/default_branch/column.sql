-- Revert: schemas/agent_db_app_public/tables/repositories/columns/default_branch/column


ALTER TABLE agent_db_app_public.repositories 
  DROP COLUMN default_branch RESTRICT;


