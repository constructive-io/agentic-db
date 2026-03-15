-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/indexes/org_profile_permissions_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/columns/created_at/column


CREATE INDEX org_profile_permissions_created_at_idx ON "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions ( created_at );

