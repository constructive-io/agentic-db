-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/constraints/files_repository_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  DROP CONSTRAINT files_repository_id_fkey;


