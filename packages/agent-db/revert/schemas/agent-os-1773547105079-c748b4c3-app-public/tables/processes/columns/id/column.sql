-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/processes/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".processes 
  DROP COLUMN id RESTRICT;


