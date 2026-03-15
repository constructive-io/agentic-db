-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/profile_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  ADD COLUMN profile_id uuid;

