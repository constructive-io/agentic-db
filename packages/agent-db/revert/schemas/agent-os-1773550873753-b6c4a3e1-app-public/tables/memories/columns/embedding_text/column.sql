-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/memories/columns/embedding_text/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".memories 
  DROP COLUMN embedding_text RESTRICT;


