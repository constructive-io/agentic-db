-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/always_load/alterations/alt0000002643
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/always_load/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skills/columns/prerequisites/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skills 
    ALTER COLUMN always_load SET DEFAULT false;

