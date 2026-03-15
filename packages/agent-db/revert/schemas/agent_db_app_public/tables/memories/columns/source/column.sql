-- Revert: schemas/agent_db_app_public/tables/memories/columns/source/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN source RESTRICT;


