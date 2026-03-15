-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/indexes/org_profile_definition_grants_permission_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_definition_grants/columns/permission_id/column


CREATE INDEX org_profile_definition_grants_permission_id_idx ON "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_definition_grants USING BTREE ( permission_id );

