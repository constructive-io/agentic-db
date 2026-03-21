-- Revert: schemas/agentic_db_app_public/tables/calendar_events/columns/recurrence_rule/column


ALTER TABLE agentic_db_app_public.calendar_events 
  DROP COLUMN recurrence_rule RESTRICT;


