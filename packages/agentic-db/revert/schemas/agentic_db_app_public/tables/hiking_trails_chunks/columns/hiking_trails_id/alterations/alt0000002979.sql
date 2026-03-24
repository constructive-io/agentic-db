-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trails_id/alterations/alt0000002979


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  ALTER COLUMN hiking_trails_id DROP NOT NULL;


