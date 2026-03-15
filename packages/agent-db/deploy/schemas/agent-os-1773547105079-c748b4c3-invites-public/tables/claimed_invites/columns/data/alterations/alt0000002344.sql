-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/columns/data/alterations/alt0000002344
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/claimed_invites/columns/data/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-invites-public".claimed_invites.data IS 'Optional JSON payload captured at the time the invite was claimed';

