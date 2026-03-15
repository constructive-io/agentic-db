-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/fingerprint_mode/alterations/alt0000002230
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/fingerprint_mode/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
    ALTER COLUMN fingerprint_mode SET DEFAULT 'lax';

