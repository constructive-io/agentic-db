-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/expires_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/table


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  ADD COLUMN expires_at timestamptz;

