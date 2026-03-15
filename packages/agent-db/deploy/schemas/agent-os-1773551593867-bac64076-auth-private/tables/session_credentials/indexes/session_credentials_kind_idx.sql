-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/indexes/session_credentials_kind_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/kind/column


CREATE INDEX session_credentials_kind_idx ON "agent-os-1773551593867-bac64076-auth-private".session_credentials USING BTREE ( kind );

