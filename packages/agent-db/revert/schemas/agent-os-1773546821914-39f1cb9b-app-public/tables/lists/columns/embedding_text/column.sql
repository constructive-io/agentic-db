-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/lists/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".lists 
  DROP COLUMN embedding_text RESTRICT;


