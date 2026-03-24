-- Deploy: schemas/agentic_db_limits_public/tables/app_limits/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT DELETE ON agentic_db_limits_public.app_limits TO authenticated;

