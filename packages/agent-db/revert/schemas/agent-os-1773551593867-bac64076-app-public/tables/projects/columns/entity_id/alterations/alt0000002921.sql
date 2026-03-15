-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/entity_id/alterations/alt0000002921


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".projects 
  ALTER COLUMN entity_id DROP NOT NULL;


