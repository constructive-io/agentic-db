-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_links/constraints/contact_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_links 
  DROP CONSTRAINT contact_links_entity_id_fkey;


