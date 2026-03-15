-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".session_archives 
  DISABLE ROW LEVEL SECURITY;


