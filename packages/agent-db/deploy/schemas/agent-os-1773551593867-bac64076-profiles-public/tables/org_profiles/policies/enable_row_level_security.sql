-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  ENABLE ROW LEVEL SECURITY;

