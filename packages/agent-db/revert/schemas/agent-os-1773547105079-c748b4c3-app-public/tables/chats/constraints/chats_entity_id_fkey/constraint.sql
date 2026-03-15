-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/chats/constraints/chats_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".chats 
  DROP CONSTRAINT chats_entity_id_fkey;


