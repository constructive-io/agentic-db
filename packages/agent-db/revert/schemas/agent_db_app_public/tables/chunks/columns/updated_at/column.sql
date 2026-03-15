-- Revert: schemas/agent_db_app_public/tables/chunks/columns/updated_at/column


ALTER TABLE agent_db_app_public.chunks 
  DROP COLUMN updated_at RESTRICT;


