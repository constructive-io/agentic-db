-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/url/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".images 
  DROP COLUMN url RESTRICT;


