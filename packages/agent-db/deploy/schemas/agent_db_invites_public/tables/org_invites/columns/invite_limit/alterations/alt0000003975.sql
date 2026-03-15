-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_limit/alterations/alt0000003975
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_limit/column


COMMENT ON COLUMN "agent_db_invites_public".org_invites.invite_limit IS E'Maximum number of times this invite can be claimed; -1 means unlimited';

