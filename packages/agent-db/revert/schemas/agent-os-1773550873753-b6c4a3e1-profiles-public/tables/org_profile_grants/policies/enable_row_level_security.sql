-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_grants/policies/enable_row_level_security


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_grants 
  DISABLE ROW LEVEL SECURITY;


