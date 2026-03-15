-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/messages/constraints/messages_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".messages 
  DROP CONSTRAINT messages_entity_id_fkey;


