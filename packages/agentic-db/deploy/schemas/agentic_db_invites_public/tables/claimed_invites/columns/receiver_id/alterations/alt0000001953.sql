-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/columns/receiver_id/alterations/alt0000001953
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/columns/receiver_id/column


COMMENT ON COLUMN agentic_db_invites_public.claimed_invites.receiver_id IS 'User ID of the person who claimed and redeemed the invitation';

