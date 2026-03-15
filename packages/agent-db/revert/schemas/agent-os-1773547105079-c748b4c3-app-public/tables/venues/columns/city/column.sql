-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/city/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venues 
  DROP COLUMN city RESTRICT;


