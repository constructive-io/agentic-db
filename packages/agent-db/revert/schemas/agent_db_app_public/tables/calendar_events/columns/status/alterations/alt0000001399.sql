-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/status/alterations/alt0000001399




ALTER TABLE agent_db_app_public.calendar_events 
    ALTER COLUMN status DROP DEFAULT;



