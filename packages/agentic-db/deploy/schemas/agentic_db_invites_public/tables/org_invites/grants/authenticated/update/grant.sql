-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT UPDATE ON agentic_db_invites_public.org_invites TO authenticated;

