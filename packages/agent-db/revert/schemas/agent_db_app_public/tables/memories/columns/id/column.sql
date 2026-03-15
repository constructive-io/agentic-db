-- Revert: schemas/agent_db_app_public/tables/memories/columns/id/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN id RESTRICT;


