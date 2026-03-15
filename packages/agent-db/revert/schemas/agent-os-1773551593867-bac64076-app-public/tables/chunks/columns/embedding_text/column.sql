-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/embedding_text/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  DROP COLUMN embedding_text RESTRICT;


