-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_images/columns/entity_id/alterations/alt0000002603


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_images 
  ALTER COLUMN entity_id DROP NOT NULL;


