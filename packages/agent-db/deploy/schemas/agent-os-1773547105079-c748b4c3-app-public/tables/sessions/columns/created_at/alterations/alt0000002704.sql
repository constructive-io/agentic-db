-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/created_at/alterations/alt0000002704
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/sessions/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".sessions 
    ALTER COLUMN created_at SET DEFAULT now();

