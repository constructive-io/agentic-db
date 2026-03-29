-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/created_at/column


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  DROP COLUMN created_at RESTRICT;


