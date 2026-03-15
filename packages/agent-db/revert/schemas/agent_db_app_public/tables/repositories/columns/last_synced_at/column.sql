-- Revert: schemas/agent_db_app_public/tables/repositories/columns/last_synced_at/column


ALTER TABLE agent_db_app_public.repositories 
  DROP COLUMN last_synced_at RESTRICT;


