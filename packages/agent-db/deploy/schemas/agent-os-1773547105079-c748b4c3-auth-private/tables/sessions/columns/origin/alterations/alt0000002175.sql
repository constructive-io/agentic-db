-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/origin/alterations/alt0000002175
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/origin/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
    ALTER COLUMN origin SET DEFAULT jwt_public.current_origin();

