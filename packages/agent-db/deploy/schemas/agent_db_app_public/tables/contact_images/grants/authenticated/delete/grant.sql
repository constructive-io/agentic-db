-- Deploy: schemas/agent_db_app_public/tables/contact_images/grants/authenticated/delete/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/contact_images/table
-- requires: schemas/agent_db_app_public/tables/venues/constraints/venues_main_image_id_fkey/constraint


GRANT DELETE ON "agent_db_app_public".contact_images TO authenticated;

