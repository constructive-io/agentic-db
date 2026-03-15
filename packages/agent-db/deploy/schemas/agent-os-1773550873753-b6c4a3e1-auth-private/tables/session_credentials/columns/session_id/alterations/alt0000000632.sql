-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/session_id/alterations/alt0000000632
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/session_credentials/columns/session_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".session_credentials 
  ALTER COLUMN session_id SET NOT NULL;

