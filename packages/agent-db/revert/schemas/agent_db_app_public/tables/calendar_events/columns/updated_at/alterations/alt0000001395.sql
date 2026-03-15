-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/updated_at/alterations/alt0000001395




ALTER TABLE agent_db_app_public.calendar_events 
    ALTER COLUMN updated_at DROP DEFAULT;



