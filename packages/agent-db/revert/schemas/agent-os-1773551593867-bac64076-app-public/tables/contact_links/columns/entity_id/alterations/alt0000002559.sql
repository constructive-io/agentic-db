-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/columns/entity_id/alterations/alt0000002559


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_links 
  ALTER COLUMN entity_id DROP NOT NULL;


