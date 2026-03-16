-- Revert: schemas/agent_db_app_public/tables/event_links/columns/created_at/alterations/alt0000001813




ALTER TABLE "agent_db_app_public".event_links 
    ALTER COLUMN created_at DROP DEFAULT;



