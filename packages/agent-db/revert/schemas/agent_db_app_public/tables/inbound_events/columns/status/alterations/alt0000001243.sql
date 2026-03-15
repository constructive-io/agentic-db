-- Revert: schemas/agent_db_app_public/tables/inbound_events/columns/status/alterations/alt0000001243




ALTER TABLE agent_db_app_public.inbound_events 
    ALTER COLUMN status DROP DEFAULT;



