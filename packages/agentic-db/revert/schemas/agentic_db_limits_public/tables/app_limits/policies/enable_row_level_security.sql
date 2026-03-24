-- Revert: schemas/agentic_db_limits_public/tables/app_limits/policies/enable_row_level_security


ALTER TABLE "agentic_db_limits_public".app_limits 
  DISABLE ROW LEVEL SECURITY;


