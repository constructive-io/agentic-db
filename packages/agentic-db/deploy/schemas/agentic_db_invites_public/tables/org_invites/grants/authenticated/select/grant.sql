-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT SELECT ON agentic_db_invites_public.org_invites TO authenticated;

