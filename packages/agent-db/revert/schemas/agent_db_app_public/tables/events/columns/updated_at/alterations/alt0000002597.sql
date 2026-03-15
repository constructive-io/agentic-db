-- Revert: schemas/agent_db_app_public/tables/events/columns/updated_at/alterations/alt0000002597




ALTER TABLE "agent_db_app_public".events 
    ALTER COLUMN updated_at DROP DEFAULT;



