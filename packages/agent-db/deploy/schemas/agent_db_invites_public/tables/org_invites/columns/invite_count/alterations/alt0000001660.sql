-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_count/alterations/alt0000001660
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_count/column


COMMENT ON COLUMN "agent_db_invites_public".org_invites.invite_count IS 'Running count of how many times this invite has been claimed';

