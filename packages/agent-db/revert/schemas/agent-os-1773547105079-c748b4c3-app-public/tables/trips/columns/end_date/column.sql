-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/trips/columns/end_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".trips 
  DROP COLUMN end_date RESTRICT;


