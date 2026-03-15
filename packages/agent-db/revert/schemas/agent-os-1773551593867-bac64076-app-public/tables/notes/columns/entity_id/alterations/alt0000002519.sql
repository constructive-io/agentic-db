-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/entity_id/alterations/alt0000002519


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ALTER COLUMN entity_id DROP NOT NULL;


