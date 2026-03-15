-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/is_anonymous/alterations/alt0000002217
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/is_anonymous/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
    ALTER COLUMN is_anonymous SET DEFAULT false;

