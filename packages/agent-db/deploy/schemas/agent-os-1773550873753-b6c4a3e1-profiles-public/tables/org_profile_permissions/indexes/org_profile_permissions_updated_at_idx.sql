-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/indexes/org_profile_permissions_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/columns/updated_at/column


CREATE INDEX org_profile_permissions_updated_at_idx ON "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_permissions ( updated_at );

