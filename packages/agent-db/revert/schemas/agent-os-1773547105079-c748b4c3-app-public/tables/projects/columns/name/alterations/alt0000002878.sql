-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/name/alterations/alt0000002878


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".projects 
  ALTER COLUMN name DROP NOT NULL;


