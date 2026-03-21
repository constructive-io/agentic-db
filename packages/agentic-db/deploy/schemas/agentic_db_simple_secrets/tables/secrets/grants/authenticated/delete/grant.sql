-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


GRANT DELETE ON agentic_db_simple_secrets.secrets TO authenticated;

