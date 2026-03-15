-- Revert: schemas/agent_db_app_public/tables/memories/columns/content/column


ALTER TABLE agent_db_app_public.memories 
  DROP COLUMN content RESTRICT;


