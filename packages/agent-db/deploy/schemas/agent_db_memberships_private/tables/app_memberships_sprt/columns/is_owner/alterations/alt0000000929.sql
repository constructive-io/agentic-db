-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/alterations/alt0000000929
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/is_owner/column


COMMENT ON COLUMN "agent_db_memberships_private".app_memberships_sprt.is_owner IS 'Whether the actor is the owner of the entity';

