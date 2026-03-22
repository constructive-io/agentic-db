-- Revert: schemas/agentic_db_app_public/tables/trip_places/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".trip_places 
  DISABLE ROW LEVEL SECURITY;


