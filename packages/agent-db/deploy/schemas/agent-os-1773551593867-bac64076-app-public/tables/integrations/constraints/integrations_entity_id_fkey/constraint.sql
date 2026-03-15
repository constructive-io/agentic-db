-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/constraints/integrations_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/integrations/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/search_tsv/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".integrations 
  ADD CONSTRAINT integrations_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

