-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/email/alterations/alt0000000792
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/email/column


COMMENT ON COLUMN agent_db_invites_public.org_invites.email IS 'Email address of the invited recipient';

