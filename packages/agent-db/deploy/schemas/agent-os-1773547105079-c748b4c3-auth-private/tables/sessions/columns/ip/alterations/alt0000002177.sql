-- Deploy: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/ip/alterations/alt0000002177
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/sessions/columns/ip/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-auth-private".sessions 
    ALTER COLUMN ip SET DEFAULT jwt_public.current_ip_address();

