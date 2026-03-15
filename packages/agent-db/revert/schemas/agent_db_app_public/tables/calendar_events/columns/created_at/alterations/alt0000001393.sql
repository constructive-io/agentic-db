-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/created_at/alterations/alt0000001393




ALTER TABLE agent_db_app_public.calendar_events 
    ALTER COLUMN created_at DROP DEFAULT;



