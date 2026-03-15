-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/target_id/alterations/alt0000002688
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/target_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/target_type/alterations/alt0000002687


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  ALTER COLUMN target_id SET NOT NULL;

