-- Revert: schemas/agent_db_app_public/tables/sessions/columns/title/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN title RESTRICT;


