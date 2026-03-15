-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/name/alterations/alt0000000695
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-encrypted/tables/encrypted_secrets/columns/name/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-encrypted".encrypted_secrets 
  ALTER COLUMN name SET NOT NULL;

