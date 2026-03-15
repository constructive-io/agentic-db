-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/ideas/columns/created_at/alterations/alt0000003038


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".ideas 
  ALTER COLUMN created_at DROP NOT NULL;


