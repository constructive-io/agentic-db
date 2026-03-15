-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/contact_images/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/venues/constraints/venues_main_image_id_fkey/constraint


GRANT DELETE ON "agent-os-1773551593867-bac64076-app-public".contact_images TO authenticated;

