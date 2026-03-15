-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tools/columns/input_schema/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tools 
  DROP COLUMN input_schema RESTRICT;


