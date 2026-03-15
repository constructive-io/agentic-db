-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_links/constraints/contact_links_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_links 
  DROP CONSTRAINT contact_links_entity_id_fkey;


