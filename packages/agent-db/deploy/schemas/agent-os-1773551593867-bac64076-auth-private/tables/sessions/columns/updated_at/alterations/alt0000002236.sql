-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/updated_at/alterations/alt0000002236
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/updated_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
  ALTER COLUMN updated_at SET DEFAULT now();

