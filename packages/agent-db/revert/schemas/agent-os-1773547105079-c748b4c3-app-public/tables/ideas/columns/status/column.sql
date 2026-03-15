-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/status/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".ideas 
  DROP COLUMN status RESTRICT;


