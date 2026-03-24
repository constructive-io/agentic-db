-- Deploy: schemas/agentic_db_memberships_public/tables/membership_types/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/membership_types/table


GRANT SELECT ON agentic_db_memberships_public.membership_types TO authenticated;

