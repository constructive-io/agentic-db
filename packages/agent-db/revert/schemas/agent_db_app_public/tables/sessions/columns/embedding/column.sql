-- Revert: schemas/agent_db_app_public/tables/sessions/columns/embedding/column


ALTER TABLE agent_db_app_public.sessions 
  DROP COLUMN embedding RESTRICT;


