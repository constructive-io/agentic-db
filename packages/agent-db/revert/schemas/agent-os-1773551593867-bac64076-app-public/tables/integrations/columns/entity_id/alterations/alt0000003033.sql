-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/columns/entity_id/alterations/alt0000003033


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ALTER COLUMN entity_id DROP NOT NULL;


