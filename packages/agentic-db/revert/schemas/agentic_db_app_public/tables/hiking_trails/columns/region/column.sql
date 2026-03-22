-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/region/column


ALTER TABLE agentic_db_app_public.hiking_trails 
  DROP COLUMN region RESTRICT;


