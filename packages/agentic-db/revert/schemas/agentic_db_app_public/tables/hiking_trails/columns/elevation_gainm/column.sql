-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/elevation_gainm/column


ALTER TABLE agentic_db_app_public.hiking_trails 
  DROP COLUMN elevation_gainm RESTRICT;


