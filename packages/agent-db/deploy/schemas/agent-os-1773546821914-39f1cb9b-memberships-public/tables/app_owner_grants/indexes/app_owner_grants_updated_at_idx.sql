-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/indexes/app_owner_grants_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_owner_grants/columns/updated_at/column


CREATE INDEX app_owner_grants_updated_at_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_owner_grants ( updated_at );

