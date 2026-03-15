-- Revert: schemas/agent-os-1773546821914-39f1cb9b-logging-public/tables/audit_logs/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-logging-public".audit_logs 
  DISABLE ROW LEVEL SECURITY;


