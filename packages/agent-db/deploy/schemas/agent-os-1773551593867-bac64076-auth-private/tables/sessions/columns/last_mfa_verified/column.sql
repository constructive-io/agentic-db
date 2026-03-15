-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/last_mfa_verified/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  ADD COLUMN last_mfa_verified timestamptz;

