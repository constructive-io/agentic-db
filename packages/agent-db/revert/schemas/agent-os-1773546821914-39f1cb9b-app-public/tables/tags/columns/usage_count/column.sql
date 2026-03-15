-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/usage_count/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
  DROP COLUMN usage_count RESTRICT;


