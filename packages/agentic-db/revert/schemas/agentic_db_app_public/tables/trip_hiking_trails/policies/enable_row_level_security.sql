-- Revert: schemas/agentic_db_app_public/tables/trip_hiking_trails/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.trip_hiking_trails 
  DISABLE ROW LEVEL SECURITY;


