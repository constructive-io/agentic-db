-- Revert: schemas/agent_db_app_public/tables/trips/columns/updated_at/alterations/alt0000001470




ALTER TABLE agent_db_app_public.trips 
    ALTER COLUMN updated_at DROP DEFAULT;



