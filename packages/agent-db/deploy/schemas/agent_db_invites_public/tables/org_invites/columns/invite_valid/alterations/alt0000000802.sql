-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_valid/alterations/alt0000000802
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_valid/column


COMMENT ON COLUMN agent_db_invites_public.org_invites.invite_valid IS 'Whether this invitation is still valid and can be redeemed';

