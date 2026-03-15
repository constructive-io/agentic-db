-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/usage_count/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
  DROP COLUMN usage_count RESTRICT;


