-- Revert: schemas/agent_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN embedding RESTRICT;


