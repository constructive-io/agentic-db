-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/id/alterations/alt0000002507
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/columns/main_image_id/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".venues 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();

