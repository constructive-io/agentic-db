-- Revert: schemas/agent_db_app_public/tables/lists/columns/embedding/column


ALTER TABLE agent_db_app_public.lists 
  DROP COLUMN embedding RESTRICT;


