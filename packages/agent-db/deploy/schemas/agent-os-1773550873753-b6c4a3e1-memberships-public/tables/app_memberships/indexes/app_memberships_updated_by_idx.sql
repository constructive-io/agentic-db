-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/indexes/app_memberships_updated_by_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/app_memberships/columns/updated_by/column


CREATE INDEX app_memberships_updated_by_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".app_memberships ( updated_by );

