-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/indexes/sessions_created_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/created_at/column


CREATE INDEX sessions_created_at_idx ON "agent-os-1773551593867-bac64076-auth-private".sessions ( created_at );

