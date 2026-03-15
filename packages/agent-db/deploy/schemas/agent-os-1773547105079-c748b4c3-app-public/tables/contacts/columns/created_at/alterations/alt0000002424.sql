-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/created_at/alterations/alt0000002424
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/created_at/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
    ALTER COLUMN created_at SET DEFAULT now();

