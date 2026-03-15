-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/origin/alterations/alt0000000614
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/origin/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();

