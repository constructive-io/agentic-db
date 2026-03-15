-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/indexes/app_memberships_is_admin_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_admin/column


CREATE INDEX app_memberships_is_admin_idx ON agent_db_memberships_public.app_memberships USING BTREE ( is_admin );

