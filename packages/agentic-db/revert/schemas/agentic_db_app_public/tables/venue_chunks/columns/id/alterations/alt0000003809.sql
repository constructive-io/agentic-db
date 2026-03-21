-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/id/alterations/alt0000003809


ALTER TABLE agentic_db_app_public.venue_chunks 
  ALTER COLUMN id DROP NOT NULL;


