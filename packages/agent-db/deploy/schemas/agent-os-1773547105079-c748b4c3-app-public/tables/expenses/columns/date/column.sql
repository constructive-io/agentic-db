-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/date/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/expenses/columns/currency/alterations/alt0000002969


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".expenses 
  ADD COLUMN date date;

