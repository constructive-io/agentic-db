-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/created_at/alterations/alt0000003254


ALTER TABLE agentic_db_app_public.venue_links 
  ALTER COLUMN created_at DROP NOT NULL;


