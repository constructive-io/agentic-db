-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/updated_at/alterations/alt0000002073
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  ALTER COLUMN updated_at SET DEFAULT now();

