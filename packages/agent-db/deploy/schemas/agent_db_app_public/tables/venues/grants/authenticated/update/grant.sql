-- Deploy: schemas/agent_db_app_public/tables/venues/grants/authenticated/update/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/venues/table
-- requires: schemas/agent_db_app_public/tables/events/columns/main_image_id/column


GRANT UPDATE ON agent_db_app_public.venues TO authenticated;

