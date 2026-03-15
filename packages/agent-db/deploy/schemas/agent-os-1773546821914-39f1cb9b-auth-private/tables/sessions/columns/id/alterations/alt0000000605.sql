-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/id/alterations/alt0000000605
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/columns/id/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

