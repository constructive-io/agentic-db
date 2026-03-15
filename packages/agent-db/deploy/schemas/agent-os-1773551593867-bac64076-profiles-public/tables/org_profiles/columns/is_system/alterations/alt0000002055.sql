-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_system/alterations/alt0000002055
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profiles/columns/is_system/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profiles 
  ALTER COLUMN is_system SET NOT NULL;

