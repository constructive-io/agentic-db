-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_token/alterations/alt0000000799
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_token/column


COMMENT ON COLUMN agent_db_invites_public.org_invites.invite_token IS 'Unique random hex token used to redeem this invitation';

