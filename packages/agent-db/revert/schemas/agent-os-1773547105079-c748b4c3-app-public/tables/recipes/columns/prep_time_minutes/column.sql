-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/prep_time_minutes/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  DROP COLUMN prep_time_minutes RESTRICT;


