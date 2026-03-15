-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/images/columns/alt_text/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".images 
  DROP COLUMN alt_text RESTRICT;


