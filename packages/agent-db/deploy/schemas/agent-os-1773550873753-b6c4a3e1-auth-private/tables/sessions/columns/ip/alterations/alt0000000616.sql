-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/ip/alterations/alt0000000616
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/sessions/columns/ip/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-auth-private".sessions 
    ALTER COLUMN ip SET DEFAULT jwt_public.current_ip_address();

