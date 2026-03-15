-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/columns/entity_id/alterations/alt0000002568


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  ALTER COLUMN entity_id DROP NOT NULL;


