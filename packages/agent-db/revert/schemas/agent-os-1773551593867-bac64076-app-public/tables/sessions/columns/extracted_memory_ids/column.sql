-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/extracted_memory_ids/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DROP COLUMN extracted_memory_ids RESTRICT;


