-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/repositories/columns/default_branch/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".repositories 
  DROP COLUMN default_branch RESTRICT;


