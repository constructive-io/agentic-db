-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/app_memberships_sprt/columns/actor_id/alterations/alt0000001646
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/app_memberships_sprt/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-private".app_memberships_sprt.actor_id IS 'References the user whose permissions are being resolved';

