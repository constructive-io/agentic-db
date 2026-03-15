-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/columns/id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/app_profile_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".app_profile_permissions 
  ADD COLUMN id uuid;

