-- Revert: schemas/agent_db_app_public/tables/trips/columns/status/alterations/alt0000001472




ALTER TABLE agent_db_app_public.trips 
    ALTER COLUMN status DROP DEFAULT;



