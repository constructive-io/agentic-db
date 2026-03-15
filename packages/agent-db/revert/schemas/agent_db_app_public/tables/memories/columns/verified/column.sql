-- Revert: schemas/agent_db_app_public/tables/memories/columns/verified/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN verified RESTRICT;


