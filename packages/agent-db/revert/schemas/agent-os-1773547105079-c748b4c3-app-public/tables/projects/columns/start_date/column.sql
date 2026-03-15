-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/start_date/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  DROP COLUMN start_date RESTRICT;


