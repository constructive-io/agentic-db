-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_grants/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".app_grants 
  DISABLE ROW LEVEL SECURITY;


