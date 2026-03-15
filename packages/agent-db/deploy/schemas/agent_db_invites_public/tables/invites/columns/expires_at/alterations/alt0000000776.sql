-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/expires_at/alterations/alt0000000776
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/expires_at/column


COMMENT ON COLUMN agent_db_invites_public.invites.expires_at IS 'Timestamp after which this invitation can no longer be redeemed';

