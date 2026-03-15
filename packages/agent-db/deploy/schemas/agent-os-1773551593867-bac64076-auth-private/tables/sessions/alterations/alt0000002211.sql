-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/alterations/alt0000002211
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  DISABLE ROW LEVEL SECURITY;

