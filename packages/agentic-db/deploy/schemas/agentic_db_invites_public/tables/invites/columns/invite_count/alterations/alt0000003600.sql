-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/invite_count/alterations/alt0000003600
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/invite_count/column


COMMENT ON COLUMN agentic_db_invites_public.invites.invite_count IS 'Running count of how many times this invite has been claimed';

