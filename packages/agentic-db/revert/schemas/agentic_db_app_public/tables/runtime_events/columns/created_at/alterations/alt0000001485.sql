-- Revert: schemas/agentic_db_app_public/tables/runtime_events/columns/created_at/alterations/alt0000001485




ALTER TABLE "agentic_db_app_public".runtime_events 
    ALTER COLUMN created_at DROP DEFAULT;



