-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/fingerprint_mode/alterations/alt0000000621
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/fingerprint_mode/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
    ALTER COLUMN fingerprint_mode SET DEFAULT 'lax';

