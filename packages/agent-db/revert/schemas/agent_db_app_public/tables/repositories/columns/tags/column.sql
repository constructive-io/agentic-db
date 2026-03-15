-- Revert: schemas/agent_db_app_public/tables/repositories/columns/tags/column


ALTER TABLE agent_db_app_public.repositories 
  DROP COLUMN tags RESTRICT;


