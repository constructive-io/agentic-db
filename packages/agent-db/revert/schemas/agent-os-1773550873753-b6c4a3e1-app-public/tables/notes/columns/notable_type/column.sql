-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/notes/columns/notable_type/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".notes 
  DROP COLUMN notable_type RESTRICT;


