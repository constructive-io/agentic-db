-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/indexes/org_memberships_sprts_is_owner_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_memberships_sprt/columns/is_owner/column


CREATE INDEX org_memberships_sprts_is_owner_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt USING BTREE ( is_owner );

