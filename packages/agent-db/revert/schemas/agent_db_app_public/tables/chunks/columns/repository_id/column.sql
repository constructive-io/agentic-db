-- Revert: schemas/agent_db_app_public/tables/chunks/columns/repository_id/column


ALTER TABLE agent_db_app_public.chunks 
  DROP COLUMN repository_id RESTRICT;


