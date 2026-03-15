-- Deploy: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/constraints/org_profile_definition_grants_permission_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-permissions-public/tables/org_permissions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-profiles-public/tables/org_profile_definition_grants/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-profiles-public".org_profile_definition_grants 
  ADD CONSTRAINT org_profile_definition_grants_permission_id_fkey 
    FOREIGN KEY(permission_id) 
    REFERENCES "agent-os-1773547105079-c748b4c3-permissions-public".org_permissions (id) 
    ON DELETE CASCADE;

