-- Revert: schemas/agent_db_app_public/tables/memories/columns/id/alterations/alt0000001032


ALTER TABLE agent_db_app_public.memories 
  ALTER COLUMN id DROP NOT NULL;


