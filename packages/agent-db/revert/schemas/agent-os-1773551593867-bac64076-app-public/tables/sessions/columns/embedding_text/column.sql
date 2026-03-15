-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/sessions/columns/embedding_text/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".sessions 
  DROP COLUMN embedding_text RESTRICT;


