-- Deploy: schemas/agentic_db_invites_public/tables/org_claimed_invites/alterations/alt0000002143
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


COMMENT ON TABLE agentic_db_invites_public.org_claimed_invites IS E'Records of successfully claimed invitations, linking senders to receivers';

