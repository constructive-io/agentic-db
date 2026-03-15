-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/policies/enable_row_level_security


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_definition_grants 
  DISABLE ROW LEVEL SECURITY;


