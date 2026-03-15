-- Revert: schemas/agent_db_app_public/tables/events/columns/name/column


ALTER TABLE "agent_db_app_public".events 
  DROP COLUMN name RESTRICT;


