-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/first_name/alterations/alt0000002427
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/first_name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contacts/columns/updated_at/alterations/alt0000002426


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contacts 
  ALTER COLUMN first_name SET NOT NULL;

