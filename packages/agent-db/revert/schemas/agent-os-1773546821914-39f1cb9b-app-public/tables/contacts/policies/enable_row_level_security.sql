-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contacts/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contacts 
  DISABLE ROW LEVEL SECURITY;


