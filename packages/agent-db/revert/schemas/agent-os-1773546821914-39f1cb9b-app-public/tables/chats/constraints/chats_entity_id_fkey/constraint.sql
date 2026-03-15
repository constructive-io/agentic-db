-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/constraints/chats_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  DROP CONSTRAINT chats_entity_id_fkey;


