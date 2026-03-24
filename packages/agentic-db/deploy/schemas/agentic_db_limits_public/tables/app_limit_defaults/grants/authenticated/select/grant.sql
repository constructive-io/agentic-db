-- Deploy: schemas/agentic_db_limits_public/tables/app_limit_defaults/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/app_limit_defaults/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT SELECT ON agentic_db_limits_public.app_limit_defaults TO authenticated;

