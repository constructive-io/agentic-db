-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/constraints/org_profile_definition_grants_permission_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_definition_grants/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_definition_grants 
  ADD CONSTRAINT org_profile_definition_grants_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agent-os-1773546821914-39f1cb9b-permissions-public".org_permissions (id) 
    ON DELETE CASCADE;

