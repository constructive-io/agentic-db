-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/kind/alterations/alt0000002244
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/kind/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
    ALTER COLUMN kind SET DEFAULT 'bearer';

