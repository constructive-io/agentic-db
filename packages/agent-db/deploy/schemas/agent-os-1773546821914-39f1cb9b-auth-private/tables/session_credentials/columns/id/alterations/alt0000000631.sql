-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/id/alterations/alt0000000631
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/session_credentials/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".session_credentials 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

