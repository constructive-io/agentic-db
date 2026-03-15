-- Revert: schemas/agent_db_app_public/tables/interactions/columns/embedding/column


ALTER TABLE agent_db_app_public.interactions 
  DROP COLUMN embedding RESTRICT;


