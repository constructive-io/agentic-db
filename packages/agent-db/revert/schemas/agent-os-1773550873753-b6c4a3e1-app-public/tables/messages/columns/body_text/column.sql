-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/columns/body_text/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".messages 
  DROP COLUMN body_text RESTRICT;


