-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_token/alterations/alt0000002511
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_token/column


COMMENT ON COLUMN agentic_db_invites_public.org_invites.invite_token IS 'Unique random hex token used to redeem this invitation';

