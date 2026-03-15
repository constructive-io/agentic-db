-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_links/constraints/contact_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".contact_links 
  DROP CONSTRAINT contact_links_entity_id_fkey;


