-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/indexes/app_admin_grants_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/app_admin_grants/columns/updated_at/column


CREATE INDEX app_admin_grants_updated_at_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".app_admin_grants ( updated_at );

