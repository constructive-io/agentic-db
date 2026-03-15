-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/indexes/app_admin_grants_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_admin_grants/columns/updated_at/column


CREATE INDEX app_admin_grants_updated_at_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_admin_grants ( updated_at );

