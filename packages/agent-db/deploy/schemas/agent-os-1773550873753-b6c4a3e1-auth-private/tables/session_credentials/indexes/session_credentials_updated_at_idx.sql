-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/indexes/session_credentials_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/updated_at/column


CREATE INDEX session_credentials_updated_at_idx ON "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials ( updated_at );

