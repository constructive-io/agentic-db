-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/updated_at/column


ALTER TABLE agentic_db_app_public.hiking_trails 
  DROP COLUMN updated_at RESTRICT;


