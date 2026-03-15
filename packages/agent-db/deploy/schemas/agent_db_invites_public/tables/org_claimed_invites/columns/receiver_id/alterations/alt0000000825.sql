-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/receiver_id/alterations/alt0000000825
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/receiver_id/column


COMMENT ON COLUMN agent_db_invites_public.org_claimed_invites.receiver_id IS 'User ID of the person who claimed and redeemed the invitation';

