-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/indexes/org_memberships_sprts_is_owner_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_memberships_sprt/columns/is_owner/column


CREATE INDEX org_memberships_sprts_is_owner_idx ON "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt USING BTREE ( is_owner );

