-- Deploy: schemas/agent_db_auth_private/tables/sessions/indexes/sessions_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/sessions/table
-- requires: schemas/agent_db_auth_private/tables/sessions/columns/created_at/column


CREATE INDEX sessions_created_at_idx ON "agent_db_auth_private".sessions ( created_at );

