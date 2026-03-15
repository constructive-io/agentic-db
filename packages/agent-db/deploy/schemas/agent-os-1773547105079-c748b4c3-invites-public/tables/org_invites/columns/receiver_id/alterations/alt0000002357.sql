-- Deploy: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/receiver_id/alterations/alt0000002357
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-invites-public/tables/org_invites/columns/receiver_id/column


COMMENT ON COLUMN "agent-os-1773547105079-c748b4c3-invites-public".org_invites.receiver_id IS E'User ID of the intended recipient, if targeting a specific user';

