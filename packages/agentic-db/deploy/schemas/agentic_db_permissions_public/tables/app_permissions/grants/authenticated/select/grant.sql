-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT SELECT ON agentic_db_permissions_public.app_permissions TO authenticated;

