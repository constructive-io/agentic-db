-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous


GRANT DELETE ON agentic_db_simple_secrets.secrets TO authenticated;

