-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/created_at/alterations/alt0000002976
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/documents/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".documents 
    ALTER COLUMN created_at SET DEFAULT now();

