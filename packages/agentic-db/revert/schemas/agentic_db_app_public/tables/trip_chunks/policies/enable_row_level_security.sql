-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.trip_chunks 
  DISABLE ROW LEVEL SECURITY;


