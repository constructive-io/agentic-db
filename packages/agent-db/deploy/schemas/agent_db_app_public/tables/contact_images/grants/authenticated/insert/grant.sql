-- Deploy: schemas/agent_db_app_public/tables/contact_images/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_images/table
-- requires: schemas/agent_db_app_public/tables/venues/constraints/venues_main_image_id_fkey/constraint


GRANT INSERT ON "agent_db_app_public".contact_images TO authenticated;

