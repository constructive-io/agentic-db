-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT UPDATE (is_banned, is_approved, is_verified, is_disabled, granted) ON agentic_db_memberships_public.app_memberships TO authenticated;

