-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/ideas/columns/content/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".ideas 
  DROP COLUMN content RESTRICT;


