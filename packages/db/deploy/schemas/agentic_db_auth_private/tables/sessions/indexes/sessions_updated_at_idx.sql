-- Deploy: schemas/agentic_db_auth_private/tables/sessions/indexes/sessions_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/sessions/table
-- requires: schemas/agentic_db_auth_private/tables/sessions/columns/updated_at/column


CREATE INDEX sessions_updated_at_idx ON "agentic_db_auth_private".sessions ( updated_at );

