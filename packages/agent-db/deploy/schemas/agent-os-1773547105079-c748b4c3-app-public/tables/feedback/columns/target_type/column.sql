-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/target_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/updated_at/alterations/alt0000002686


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  ADD COLUMN target_type text;

