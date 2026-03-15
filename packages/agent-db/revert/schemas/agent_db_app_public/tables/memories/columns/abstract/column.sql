-- Revert: schemas/agent_db_app_public/tables/memories/columns/abstract/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN abstract RESTRICT;


