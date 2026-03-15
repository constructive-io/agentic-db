-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/amount/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/updated_at/alterations/alt0000002968


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expenses 
  ADD COLUMN amount numeric;

