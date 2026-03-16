-- Deploy: schemas/agent_db_auth_private/tables/sessions/indexes/sessions_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/updated_at/column


CREATE INDEX sessions_updated_at_idx ON "agent_db_auth_private".sessions ( updated_at );

