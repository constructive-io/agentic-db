-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chunks/constraints/chunks_file_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chunks 
  DROP CONSTRAINT chunks_file_id_fkey;


