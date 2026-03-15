-- Revert: schemas/agent_db_app_public/tables/trips/policies/enable_row_level_security


ALTER TABLE agent_db_app_public.trips 
  DISABLE ROW LEVEL SECURITY;


