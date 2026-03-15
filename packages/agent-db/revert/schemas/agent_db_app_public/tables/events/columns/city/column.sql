-- Revert: schemas/agent_db_app_public/tables/events/columns/city/column


ALTER TABLE "agent_db_app_public".events 
  DROP COLUMN city RESTRICT;


