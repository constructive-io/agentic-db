-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/target_type/alterations/alt0000002687


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  ALTER COLUMN target_type DROP NOT NULL;


