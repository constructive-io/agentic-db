-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/indexes/org_membership_defaults_updated_by_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_membership_defaults/columns/updated_by/column


CREATE INDEX org_membership_defaults_updated_by_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_membership_defaults ( updated_by );

