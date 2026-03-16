-- Revert: schemas/agent_db_app_public/tables/events/columns/event_type/column


ALTER TABLE "agent_db_app_public".events 
  DROP COLUMN event_type RESTRICT;


