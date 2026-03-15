-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/goals/columns/embedding_text/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".goals 
  DROP COLUMN embedding_text RESTRICT;


