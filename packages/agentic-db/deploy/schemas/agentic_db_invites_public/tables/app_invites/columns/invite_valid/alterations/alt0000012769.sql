-- Deploy: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_valid/alterations/alt0000012769
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/app_invites/columns/invite_valid/column


COMMENT ON COLUMN agentic_db_invites_public.app_invites.invite_valid IS 'Whether this invitation is still valid and can be redeemed';

