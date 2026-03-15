-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/feedback/columns/comment/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".feedback 
  DROP COLUMN comment RESTRICT;


