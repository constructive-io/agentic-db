-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/repositories/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".repositories 
  DROP COLUMN embedding_text RESTRICT;


