-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_token/alterations/alt0000000760
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/invite_token/column


COMMENT ON COLUMN agent_db_invites_public.invites.invite_token IS 'Unique random hex token used to redeem this invitation';

