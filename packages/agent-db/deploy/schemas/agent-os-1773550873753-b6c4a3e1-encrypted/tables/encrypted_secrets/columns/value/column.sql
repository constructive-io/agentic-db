-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/value/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets 
  ADD COLUMN value bytea;

