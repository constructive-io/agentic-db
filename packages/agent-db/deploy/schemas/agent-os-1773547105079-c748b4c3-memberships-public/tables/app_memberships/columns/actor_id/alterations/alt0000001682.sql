-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/actor_id/alterations/alt0000001682
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/app_memberships/columns/actor_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-memberships-public".app_memberships.actor_id IS 'References the user who holds this membership';

