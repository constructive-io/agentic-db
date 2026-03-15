-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/indexes/sessions_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/created_at/column


CREATE INDEX sessions_created_at_idx ON "agent-os-1773550873753-b6c4a3e1-auth-private".sessions ( created_at );

