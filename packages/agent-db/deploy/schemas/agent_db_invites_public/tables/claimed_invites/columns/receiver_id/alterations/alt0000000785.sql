-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/columns/receiver_id/alterations/alt0000000785
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/columns/receiver_id/column


COMMENT ON COLUMN agent_db_invites_public.claimed_invites.receiver_id IS 'User ID of the person who claimed and redeemed the invitation';

