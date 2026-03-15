-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000000691
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-encrypted/tables/encrypted_secrets/columns/id/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-encrypted".encrypted_secrets 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

