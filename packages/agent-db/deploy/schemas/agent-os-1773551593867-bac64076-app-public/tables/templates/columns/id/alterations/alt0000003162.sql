-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/id/alterations/alt0000003162
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/templates/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/recipes/columns/embedding/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".templates 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

