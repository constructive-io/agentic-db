-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/indexes/org_grants_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_grants/columns/created_at/column


CREATE INDEX org_grants_created_at_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_grants ( created_at );

