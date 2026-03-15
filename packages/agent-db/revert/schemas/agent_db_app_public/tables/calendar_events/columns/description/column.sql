-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/description/column


ALTER TABLE agent_db_app_public.calendar_events 
  DROP COLUMN description RESTRICT;


