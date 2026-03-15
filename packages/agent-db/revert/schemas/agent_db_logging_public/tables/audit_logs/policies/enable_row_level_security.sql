-- Revert: schemas/agent_db_logging_public/tables/audit_logs/policies/enable_row_level_security


ALTER TABLE agent_db_logging_public.audit_logs 
  DISABLE ROW LEVEL SECURITY;


