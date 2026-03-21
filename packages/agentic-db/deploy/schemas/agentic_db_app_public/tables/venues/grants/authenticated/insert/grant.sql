-- Deploy: schemas/agentic_db_app_public/tables/venues/grants/authenticated/insert/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/venues/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/main_image_id/column


GRANT INSERT ON agentic_db_app_public.venues TO authenticated;

