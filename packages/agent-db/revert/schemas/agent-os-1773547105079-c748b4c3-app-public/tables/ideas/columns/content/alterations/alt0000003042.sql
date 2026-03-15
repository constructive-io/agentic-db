-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/content/alterations/alt0000003042


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".ideas 
  ALTER COLUMN content DROP NOT NULL;


