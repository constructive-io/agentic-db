-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/data/alterations/alt0000002392
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/claimed_invites/columns/data/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-invites-public".claimed_invites.data IS 'Optional JSON payload captured at the time the invite was claimed';

