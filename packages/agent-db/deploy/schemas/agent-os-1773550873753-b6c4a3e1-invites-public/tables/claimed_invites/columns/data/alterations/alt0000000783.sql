-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/data/alterations/alt0000000783
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/claimed_invites/columns/data/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-invites-public".claimed_invites.data IS 'Optional JSON payload captured at the time the invite was claimed';

