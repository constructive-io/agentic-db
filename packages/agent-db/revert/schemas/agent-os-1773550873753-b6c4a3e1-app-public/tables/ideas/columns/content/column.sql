-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/ideas/columns/content/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".ideas 
  DROP COLUMN content RESTRICT;


