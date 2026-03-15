-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/alterations/alt0000002470
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_limit/column


COMMENT ON COLUMN "agent_db_invites_public".invites.invite_limit IS E'Maximum number of times this invite can be claimed; -1 means unlimited';

