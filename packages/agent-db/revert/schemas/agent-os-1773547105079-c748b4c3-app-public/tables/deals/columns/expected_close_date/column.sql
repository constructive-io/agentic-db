-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/expected_close_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
  DROP COLUMN expected_close_date RESTRICT;


