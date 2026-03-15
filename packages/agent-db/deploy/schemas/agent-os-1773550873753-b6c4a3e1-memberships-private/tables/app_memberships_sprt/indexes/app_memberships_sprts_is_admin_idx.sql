-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/indexes/app_memberships_sprts_is_admin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/app_memberships_sprt/columns/is_admin/column


CREATE INDEX app_memberships_sprts_is_admin_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt USING BTREE ( is_admin );

