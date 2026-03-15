-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/indexes/sessions_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/updated_at/column


CREATE INDEX sessions_updated_at_idx ON "agent-os-1773546821914-39f1cb9b-auth-private".sessions ( updated_at );

