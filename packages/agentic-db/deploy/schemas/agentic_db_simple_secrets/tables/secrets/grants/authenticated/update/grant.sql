-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/grants/authenticated/update/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


GRANT UPDATE ON "agentic_db_simple_secrets".secrets TO authenticated;

