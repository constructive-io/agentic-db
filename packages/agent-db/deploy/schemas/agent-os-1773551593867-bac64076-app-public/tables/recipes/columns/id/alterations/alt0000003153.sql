-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/id/alterations/alt0000003153
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notifications/columns/source_entity_type/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".recipes 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

