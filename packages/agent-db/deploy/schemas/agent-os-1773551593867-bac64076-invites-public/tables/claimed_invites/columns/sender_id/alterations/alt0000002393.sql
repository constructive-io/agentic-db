-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/sender_id/alterations/alt0000002393
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/sender_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-invites-public".claimed_invites.sender_id IS 'User ID of the original invitation sender';

