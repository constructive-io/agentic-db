-- Revert: schemas/agentic_db_logging_public/tables/audit_logs/policies/enable_row_level_security


ALTER TABLE "agentic_db_logging_public".audit_logs 
  DISABLE ROW LEVEL SECURITY;


