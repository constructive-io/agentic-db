-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/files/constraints/files_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".files 
  DROP CONSTRAINT files_repository_id_fkey;


