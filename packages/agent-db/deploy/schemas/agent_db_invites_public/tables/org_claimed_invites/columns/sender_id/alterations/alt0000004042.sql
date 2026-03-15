-- Deploy: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/sender_id/alterations/alt0000004042
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_claimed_invites/columns/sender_id/column


COMMENT ON COLUMN "agent_db_invites_public".org_claimed_invites.sender_id IS 'User ID of the original invitation sender';

