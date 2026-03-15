-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/alterations/alt0000000602
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-auth-private".sessions 
  DISABLE ROW LEVEL SECURITY;

