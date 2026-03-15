-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_valid/alterations/alt0000000763
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_valid/column


COMMENT ON COLUMN agent_db_invites_public.invites.invite_valid IS 'Whether this invitation is still valid and can be redeemed';

