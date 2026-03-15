-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_grants/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_grants 
  ENABLE ROW LEVEL SECURITY;

