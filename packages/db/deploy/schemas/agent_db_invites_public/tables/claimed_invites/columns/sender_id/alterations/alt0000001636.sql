-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/columns/sender_id/alterations/alt0000001636
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/columns/sender_id/column


COMMENT ON COLUMN "agent_db_invites_public".claimed_invites.sender_id IS 'User ID of the original invitation sender';

