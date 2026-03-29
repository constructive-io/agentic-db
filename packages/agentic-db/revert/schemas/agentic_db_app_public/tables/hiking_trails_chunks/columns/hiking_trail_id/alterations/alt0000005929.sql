-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trail_id/alterations/alt0000005929


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  ALTER COLUMN hiking_trail_id DROP NOT NULL;


