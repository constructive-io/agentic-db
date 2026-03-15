-- Deploy: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000003255
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/app_memberships_sprt/columns/actor_id/column


COMMENT ON COLUMN "agent_db_memberships_private".app_memberships_sprt.actor_id IS 'References the user whose permissions are being resolved';

