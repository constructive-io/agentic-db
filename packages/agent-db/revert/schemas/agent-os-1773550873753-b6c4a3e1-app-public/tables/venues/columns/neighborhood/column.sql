-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/neighborhood/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venues 
  DROP COLUMN neighborhood RESTRICT;


