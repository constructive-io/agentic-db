-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/constraints/chats_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  DROP CONSTRAINT chats_entity_id_fkey;


