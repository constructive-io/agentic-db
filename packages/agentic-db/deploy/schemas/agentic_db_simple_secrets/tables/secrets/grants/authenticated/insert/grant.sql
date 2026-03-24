-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT INSERT ON agentic_db_simple_secrets.secrets TO authenticated;

