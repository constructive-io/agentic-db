-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/receiver_id/alterations/alt0000004014
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/receiver_id/column


COMMENT ON COLUMN "agent_db_invites_public".org_invites.receiver_id IS E'User ID of the intended recipient, if targeting a specific user';

