-- Revert: schemas/agentic_db_app_public/tables/events/columns/created_at/alterations/alt0000000961




ALTER TABLE "agentic_db_app_public".events 
    ALTER COLUMN created_at DROP DEFAULT;



