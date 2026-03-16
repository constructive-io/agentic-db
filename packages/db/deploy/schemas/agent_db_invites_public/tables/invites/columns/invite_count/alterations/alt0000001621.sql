-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_count/alterations/alt0000001621
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_count/column


COMMENT ON COLUMN "agent_db_invites_public".invites.invite_count IS 'Running count of how many times this invite has been claimed';

