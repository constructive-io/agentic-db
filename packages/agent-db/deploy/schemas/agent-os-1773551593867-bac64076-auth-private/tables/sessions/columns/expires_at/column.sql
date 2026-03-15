-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/expires_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  ADD COLUMN expires_at timestamptz;

