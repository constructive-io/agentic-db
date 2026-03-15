-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/constraints/chunks_file_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  DROP CONSTRAINT chunks_file_id_fkey;


