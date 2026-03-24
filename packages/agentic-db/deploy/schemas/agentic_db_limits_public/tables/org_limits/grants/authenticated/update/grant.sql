-- Deploy: schemas/agentic_db_limits_public/tables/org_limits/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_limits_public/schema
-- requires: schemas/agentic_db_limits_public/tables/org_limits/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT UPDATE ON agentic_db_limits_public.org_limits TO authenticated;

