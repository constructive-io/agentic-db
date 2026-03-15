-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  DISABLE ROW LEVEL SECURITY;


