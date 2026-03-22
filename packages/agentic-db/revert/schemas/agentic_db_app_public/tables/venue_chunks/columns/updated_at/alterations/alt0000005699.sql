-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/updated_at/alterations/alt0000005699


ALTER TABLE agentic_db_app_public.venue_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


