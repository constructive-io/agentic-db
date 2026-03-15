-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/indexes/app_memberships_is_admin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/app_memberships/columns/is_admin/column


CREATE INDEX app_memberships_is_admin_idx ON "agent-os-1773551593867-bac64076-memberships-public".app_memberships USING BTREE ( is_admin );

