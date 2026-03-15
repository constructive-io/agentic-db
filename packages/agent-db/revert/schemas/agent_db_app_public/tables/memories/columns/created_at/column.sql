-- Revert: schemas/agent_db_app_public/tables/memories/columns/created_at/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN created_at RESTRICT;


