-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/hiking_trail_id/column


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  DROP COLUMN hiking_trail_id RESTRICT;


