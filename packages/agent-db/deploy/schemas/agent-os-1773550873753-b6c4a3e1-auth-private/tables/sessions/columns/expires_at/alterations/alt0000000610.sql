-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/expires_at/alterations/alt0000000610
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/expires_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
  ALTER COLUMN expires_at SET NOT NULL;

