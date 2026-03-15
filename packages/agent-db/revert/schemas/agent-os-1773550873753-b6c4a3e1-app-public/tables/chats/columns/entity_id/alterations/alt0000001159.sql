-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/chats/columns/entity_id/alterations/alt0000001159


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".chats 
  ALTER COLUMN entity_id DROP NOT NULL;


