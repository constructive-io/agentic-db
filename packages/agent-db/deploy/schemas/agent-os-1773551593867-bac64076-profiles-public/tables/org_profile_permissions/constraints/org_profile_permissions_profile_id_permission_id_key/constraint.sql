-- Deploy: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/constraints/org_profile_permissions_profile_id_permission_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-profiles-public/tables/org_profile_permissions/table


ALTER TABLE "agent-os-1773551593867-bac64076-profiles-public".org_profile_permissions 
  ADD CONSTRAINT org_profile_permissions_profile_id_permission_id_key 
    UNIQUE (profile_id, permission_id);

