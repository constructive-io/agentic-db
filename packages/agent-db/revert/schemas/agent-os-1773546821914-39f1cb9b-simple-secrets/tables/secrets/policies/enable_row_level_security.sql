-- Revert: schemas/agent-os-1773546821914-39f1cb9b-simple-secrets/tables/secrets/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-simple-secrets".secrets 
  DISABLE ROW LEVEL SECURITY;


