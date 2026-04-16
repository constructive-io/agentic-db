-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/columns/trailhead_geo/column


ALTER TABLE agentic_db_app_public.hiking_trails 
  DROP COLUMN trailhead_geo RESTRICT;


