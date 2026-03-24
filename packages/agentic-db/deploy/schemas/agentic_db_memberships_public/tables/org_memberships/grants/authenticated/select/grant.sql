-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT SELECT ON agentic_db_memberships_public.org_memberships TO authenticated;

