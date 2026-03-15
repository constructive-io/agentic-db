-- Deploy: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/origin/alterations/alt0000002223
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773551593867-bac64076-auth-private/tables/sessions/columns/origin/column



ALTER TABLE "agent-os-1773551593867-bac64076-auth-private".sessions 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();

