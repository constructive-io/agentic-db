-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/email/alterations/alt0000001606
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/columns/email/column


COMMENT ON COLUMN "agent_db_invites_public".invites.email IS 'Email address of the invited recipient';

