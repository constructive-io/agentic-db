-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/sessions/columns/compression_count/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".sessions 
  DROP COLUMN compression_count RESTRICT;


