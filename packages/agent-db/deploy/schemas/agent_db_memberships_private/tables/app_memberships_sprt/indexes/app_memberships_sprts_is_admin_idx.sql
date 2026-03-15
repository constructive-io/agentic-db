-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/indexes/app_memberships_sprts_is_admin_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/table
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/is_admin/column


CREATE INDEX app_memberships_sprts_is_admin_idx ON agent_db_memberships_private.app_memberships_sprt USING BTREE ( is_admin );

