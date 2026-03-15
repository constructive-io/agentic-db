-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/chats/columns/entity_id/alterations/alt0000002768


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chats 
  ALTER COLUMN entity_id DROP NOT NULL;


