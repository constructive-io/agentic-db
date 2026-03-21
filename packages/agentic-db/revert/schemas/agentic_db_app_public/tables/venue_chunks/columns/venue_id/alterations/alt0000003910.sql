-- Revert: schemas/agentic_db_app_public/tables/venue_chunks/columns/venue_id/alterations/alt0000003910


ALTER TABLE agentic_db_app_public.venue_chunks 
  ALTER COLUMN venue_id DROP NOT NULL;


