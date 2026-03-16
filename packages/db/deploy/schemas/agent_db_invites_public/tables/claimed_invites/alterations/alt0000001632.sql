-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/alterations/alt0000001632
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table


COMMENT ON TABLE "agent_db_invites_public".claimed_invites IS E'Records of successfully claimed invitations, linking senders to receivers';

