-- Deploy: schemas/agentic_db_permissions_public/tables/app_permission_defaults/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_permissions_public/tables/app_permission_defaults/table


GRANT UPDATE ON agentic_db_permissions_public.app_permission_defaults TO authenticated;

