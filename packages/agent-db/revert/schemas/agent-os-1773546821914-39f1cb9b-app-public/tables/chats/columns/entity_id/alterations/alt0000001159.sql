-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/chats/columns/entity_id/alterations/alt0000001159


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".chats 
  ALTER COLUMN entity_id DROP NOT NULL;


