-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/created_at/alterations/alt0000000646
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials 
  ALTER COLUMN created_at SET DEFAULT now();

