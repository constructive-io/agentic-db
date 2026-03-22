-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/updated_at/alterations/alt0000002262




ALTER TABLE agentic_db_app_public.venue_links 
    ALTER COLUMN updated_at DROP DEFAULT;



