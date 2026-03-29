-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/expires_at/alterations/alt0000010267
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/expires_at/column


COMMENT ON COLUMN agentic_db_invites_public.invites.expires_at IS 'Timestamp after which this invitation can no longer be redeemed';

