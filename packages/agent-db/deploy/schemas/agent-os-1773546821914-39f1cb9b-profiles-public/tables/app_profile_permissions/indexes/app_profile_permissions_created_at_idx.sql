-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/indexes/app_profile_permissions_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profile_permissions/columns/created_at/column


CREATE INDEX app_profile_permissions_created_at_idx ON "agent-os-1773546821914-39f1cb9b-profiles-public".app_profile_permissions ( created_at );

