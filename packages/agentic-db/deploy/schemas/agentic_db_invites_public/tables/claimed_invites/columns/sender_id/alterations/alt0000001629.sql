-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/columns/sender_id/alterations/alt0000001629
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/columns/sender_id/column


COMMENT ON COLUMN "agentic_db_invites_public".claimed_invites.sender_id IS 'User ID of the original invitation sender';

