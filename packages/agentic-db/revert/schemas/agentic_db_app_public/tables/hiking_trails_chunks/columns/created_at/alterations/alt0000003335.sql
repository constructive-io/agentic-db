-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/created_at/alterations/alt0000003335


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


