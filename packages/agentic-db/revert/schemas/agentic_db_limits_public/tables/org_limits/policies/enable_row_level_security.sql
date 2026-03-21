-- Revert: schemas/agentic_db_limits_public/tables/org_limits/policies/enable_row_level_security


ALTER TABLE agentic_db_limits_public.org_limits 
  DISABLE ROW LEVEL SECURITY;


