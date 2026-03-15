-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/instructions/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  DROP COLUMN instructions RESTRICT;


