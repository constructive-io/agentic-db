-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/updated_at/alterations/alt0000002256
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/session_credentials/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".session_credentials 
  ALTER COLUMN updated_at SET DEFAULT now();

