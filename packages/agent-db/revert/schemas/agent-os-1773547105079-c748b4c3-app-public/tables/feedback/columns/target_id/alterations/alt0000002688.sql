-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/target_id/alterations/alt0000002688


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  ALTER COLUMN target_id DROP NOT NULL;


