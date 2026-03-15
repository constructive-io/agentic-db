-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/is_admin/alterations/alt0000000080
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/is_admin/column


COMMENT ON COLUMN agent_db_memberships_private.app_memberships_sprt.is_admin IS 'Whether the actor has admin privileges on the entity';

