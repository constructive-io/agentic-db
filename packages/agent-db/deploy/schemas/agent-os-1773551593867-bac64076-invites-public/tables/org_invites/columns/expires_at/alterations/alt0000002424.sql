-- Deploy: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/expires_at/alterations/alt0000002424
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-invites-public/tables/org_invites/columns/expires_at/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-invites-public".org_invites.expires_at IS 'Timestamp after which this invitation can no longer be redeemed';

