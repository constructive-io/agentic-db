-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/id/alterations/alt0000002240
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/id/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

