-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/is_recurring/alterations/alt0000002970
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/receipt_url/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/is_recurring/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expenses 
    ALTER COLUMN is_recurring SET DEFAULT false;

