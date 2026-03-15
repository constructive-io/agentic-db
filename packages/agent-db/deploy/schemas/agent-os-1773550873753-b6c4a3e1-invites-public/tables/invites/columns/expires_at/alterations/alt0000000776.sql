-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/expires_at/alterations/alt0000000776
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-invites-public/tables/invites/columns/expires_at/column


COMMENT ON COLUMN "agent-os-1773550873753-b6c4a3e1-invites-public".invites.expires_at IS 'Timestamp after which this invitation can no longer be redeemed';

