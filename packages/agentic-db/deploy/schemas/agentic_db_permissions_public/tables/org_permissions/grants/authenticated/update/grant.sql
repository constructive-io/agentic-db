-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT UPDATE ON agentic_db_permissions_public.org_permissions TO authenticated;

