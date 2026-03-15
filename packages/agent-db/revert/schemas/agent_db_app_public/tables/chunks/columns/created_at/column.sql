-- Revert: schemas/agent_db_app_public/tables/chunks/columns/created_at/column


ALTER TABLE agent_db_app_public.chunks 
  DROP COLUMN created_at RESTRICT;


