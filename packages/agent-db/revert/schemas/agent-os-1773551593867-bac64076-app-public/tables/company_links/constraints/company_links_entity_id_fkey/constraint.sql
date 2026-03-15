-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/company_links/constraints/company_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".company_links 
  DROP CONSTRAINT company_links_entity_id_fkey;


