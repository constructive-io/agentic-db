-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/alterations/alt0000002064
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  DISABLE ROW LEVEL SECURITY;

