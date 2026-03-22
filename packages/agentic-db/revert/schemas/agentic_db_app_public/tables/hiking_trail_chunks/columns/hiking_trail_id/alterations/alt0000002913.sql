-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/hiking_trail_id/alterations/alt0000002913


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  ALTER COLUMN hiking_trail_id DROP NOT NULL;


