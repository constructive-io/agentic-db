-- Revert: schemas/agent_db_app_public/tables/memories/columns/importance/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN importance RESTRICT;


