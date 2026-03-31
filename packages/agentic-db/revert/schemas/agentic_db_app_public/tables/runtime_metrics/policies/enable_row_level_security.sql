-- Revert: schemas/agentic_db_app_public/tables/runtime_metrics/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".runtime_metrics 
  DISABLE ROW LEVEL SECURITY;


